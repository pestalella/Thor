/***************************************************
  STM32 Support added by Jaret Burkett at OSHlab.com

  This is our library for the Adafruit ILI9488 Breakout and Shield
  ----> http://www.adafruit.com/products/1651

  Check out the links above for our tutorials and wiring diagrams
  These displays use SPI to communicate, 4 or 5 pins are required to
  interface (RST is optional)
  Adafruit invests time and resources providing this open source code,
  please support Adafruit and open-source hardware by purchasing
  products from Adafruit!

  Written by Limor Fried/Ladyada for Adafruit Industries.
  MIT license, all text above must be included in any redistribution

  Adapted to STM32F411 by Pau Estalella, improved performance.
 ****************************************************/

#include "ILI9488.h"

#include <limits.h>
#include <SPI.h>

// These functions establish settings and protect from 
// interference from other libraries. 
static inline void spi_begin(void) __attribute__((always_inline));
static inline void spi_begin(void) {
  SPI.beginTransaction(SPISettings(24000000, MSBFIRST, SPI_MODE0));
}
static inline void spi_end(void) __attribute__((always_inline));
static inline void spi_end(void) {
  SPI.endTransaction();
}

// Constructor when using hardware SPI.
ILI9488::ILI9488(int8_t cs, int8_t dc, int8_t rst) : 
  Adafruit_GFX(ILI9488_TFTWIDTH, ILI9488_TFTHEIGHT) 
{
  _cs   = cs;
  _dc   = dc;
  _rst  = rst;
}

void ILI9488::spiwrite(uint8_t c) 
{
  SPI.transfer(c);
}


void ILI9488::writecommand(uint8_t c) {
  digitalWrite(_dc, LOW);
  digitalWrite(_cs, LOW);

  spiwrite(c);

  digitalWrite(_cs, HIGH);
}


void ILI9488::writedata(uint8_t c) {
  digitalWrite(_dc, HIGH);
  digitalWrite(_cs, LOW);

  spiwrite(c);

  digitalWrite(_cs, HIGH);
}


// Rather than a bazillion writecommand() and writedata() calls, screen
// initialization commands and arguments are organized in these tables
// stored in PROGMEM.  The table may look bulky, but that's mostly the
// formatting -- storage-wise this is hundreds of bytes more compact
// than the equivalent code.  Companion function follows.
#define DELAY 0x80


// Companion code to the above tables.  Reads and issues
// a series of LCD commands stored in PROGMEM byte array.
void ILI9488::commandList(uint8_t *addr) {

  uint8_t  numCommands, numArgs;
  uint16_t ms;

  numCommands = pgm_read_byte(addr++);   // Number of commands to follow
  while(numCommands--) {                 // For each command...
    writecommand(pgm_read_byte(addr++)); //   Read, issue command
    numArgs  = pgm_read_byte(addr++);    //   Number of args to follow
    ms       = numArgs & DELAY;          //   If hibit set, delay follows args
    numArgs &= ~DELAY;                   //   Mask out delay bit
    while(numArgs--) {                   //   For each argument...
      writedata(pgm_read_byte(addr++));  //     Read, issue argument
    }

    if(ms) {
      ms = pgm_read_byte(addr++); // Read post-command delay time (ms)
      if(ms == 255) ms = 500;     // If 255, delay for 500 ms
      delay(ms);
    }
  }
}


void ILI9488::begin(void) {
  if (_rst > 0) {
    pinMode(_rst, OUTPUT);
    digitalWrite(_rst, LOW);
  }

  pinMode(_dc, OUTPUT);
  pinMode(_cs, OUTPUT);

  SPI.begin();

  // toggle RST low to reset
  if (_rst > 0) {
    digitalWrite(_rst, HIGH);
    delay(5);
    digitalWrite(_rst, LOW);
    delay(20);
    digitalWrite(_rst, HIGH);
    delay(150);
  }

  spi_begin();

  writecommand(0xE0);
	writedata(0x00);
	writedata(0x03);
	writedata(0x09);
	writedata(0x08);
	writedata(0x16);
	writedata(0x0A);
	writedata(0x3F);
	writedata(0x78);
	writedata(0x4C);
	writedata(0x09);
	writedata(0x0A);
	writedata(0x08);
	writedata(0x16);
	writedata(0x1A);
	writedata(0x0F);


	writecommand(0XE1);
	writedata(0x00);
	writedata(0x16);
	writedata(0x19);
	writedata(0x03);
	writedata(0x0F);
	writedata(0x05);
	writedata(0x32);
	writedata(0x45);
	writedata(0x46);
	writedata(0x04);
	writedata(0x0E);
	writedata(0x0D);
	writedata(0x35);
	writedata(0x37);
	writedata(0x0F);



	writecommand(0XC0);      //Power Control 1
	writedata(0x17);    //Vreg1out
	writedata(0x15);    //Verg2out

	writecommand(0xC1);      //Power Control 2
	writedata(0x41);    //VGH,VGL

	writecommand(0xC5);      //Power Control 3
	writedata(0x00);
	writedata(0x12);    //Vcom
	writedata(0x80);

	writecommand(0x36);      //Memory Access
	writedata(0x48);

	writecommand(ILI9488_PIXFMT);      // Interface Pixel Format
	writedata(0x66); 	  //18 bit

	writecommand(0XB0);      // Interface Mode Control
	writedata(0x80);     			 //SDO NOT USE

	writecommand(0xB1);      //Frame rate
	writedata(0xA0);    //60Hz

	writecommand(0xB4);      //Display Inversion Control
	writedata(0x02);    //2-dot

	writecommand(0XB6);      //Display Function Control  RGB/MCU Interface Control

	writedata(0x02);    //MCU
	writedata(0x02);    //Source,Gate scan dieection

	writecommand(0XE9);      // Set Image Functio
	writedata(0x00);    // Disable 24 bit data

	writecommand(0xF7);      // Adjust Control
	writedata(0xA9);
	writedata(0x51);
	writedata(0x2C);
	writedata(0x82);    // D7 stream, loose


  writecommand(ILI9488_SLPOUT);    //Exit Sleep
  spi_end();
  delay(120);
  spi_begin();
  writecommand(ILI9488_DISPON);    //Display on
  spi_end();

}

void ILI9488::setScrollArea(uint16_t topFixedArea, uint16_t bottomFixedArea){
  spi_begin();
  writecommand(0x33); // Vertical scroll definition
  writedata(topFixedArea >> 8);
  writedata(topFixedArea);
  writedata((_height - topFixedArea - bottomFixedArea) >> 8);
  writedata(_height - topFixedArea - bottomFixedArea);
  writedata(bottomFixedArea >> 8);
  writedata(bottomFixedArea);
  spi_end();
}
void ILI9488::scroll(uint16_t pixels){
  spi_begin();
  writecommand(0x37); // Vertical scrolling start address
  writedata(pixels >> 8);
  writedata(pixels);
  spi_end();
}

void ILI9488::setAddrWindow(uint16_t x0, uint16_t y0, uint16_t x1,
 uint16_t y1) {

  writecommand(ILI9488_CASET); // Column addr set
  writedata(x0 >> 8);
  writedata(x0 & 0xFF);     // XSTART
  writedata(x1 >> 8);
  writedata(x1 & 0xFF);     // XEND

  writecommand(ILI9488_PASET); // Row addr set
  writedata(y0>>8);
  writedata(y0 &0xff);     // YSTART
  writedata(y1>>8);
  writedata(y1 &0xff);     // YEND

  writecommand(ILI9488_RAMWR); // write to RAM
}

void ILI9488::drawImage(const uint8_t* img, uint16_t x, uint16_t y, uint16_t w, uint16_t h)
{
  // rudimentary clipping (drawChar w/big text requires this)
  if((x >= _width) || (y >= _height)) return;
  if((x + w - 1) >= _width)  w = _width  - x;
  if((y + h - 1) >= _height) h = _height - y;

  spi_begin();
  setAddrWindow(x, y, x+w-1, y+h-1);

  digitalWrite(_dc, HIGH);
  digitalWrite(_cs, LOW);

  uint8_t linebuff[w*3+1];
  uint16_t pixels = w*h;
  uint32_t count = 0;
  for (uint16_t i = 0; i < h; i++) {
    uint16_t pixcount = 0;
    for (uint16_t o = 0; o <  w; o++) {
      uint8_t b1 = img[count];
      count++;
      uint8_t b2 = img[count];
      count++;
      uint16_t color = b1 << 8 | b2;
      linebuff[pixcount] = (((color & 0xF800) >> 11)* 255) / 31;
      pixcount++;
      linebuff[pixcount] = (((color & 0x07E0) >> 5) * 255) / 63;
      pixcount++;
      linebuff[pixcount] = ((color & 0x001F)* 255) / 31;
      pixcount++;
    } // for row
    for(uint16_t b = 0; b < w*3; b++){
      spiwrite(linebuff[b]);
    }

  }// for col

  digitalWrite(_cs, HIGH);
  spi_end();
}


void ILI9488::pushColor(uint16_t color) {
  spi_begin();

  digitalWrite(_dc, HIGH);
  digitalWrite(_cs, LOW);

  write16BitColor(color);

  digitalWrite(_cs, HIGH);

  spi_end();
}

void ILI9488::pushColors(uint16_t *data, uint8_t len, boolean first) 
{
  uint16_t color;
  uint8_t  buff[len*3+1];
  uint16_t count = 0;
  uint8_t lencount = len;
  spi_begin();
    digitalWrite(_cs, LOW);
  if(first == true) { // Issue GRAM write command only on first call
      digitalWrite(_dc, HIGH);
  }
  while(lencount--) {
    color = *data++;
    buff[count] = (((color & 0xF800) >> 11)* 255) / 31;
    count++;
    buff[count] = (((color & 0x07E0) >> 5) * 255) / 63;
    count++;
    buff[count] = ((color & 0x001F)* 255) / 31;
    count++;
  }
  for(uint16_t b = 0; b < len*3; b++){
    spiwrite(buff[b]);
  }
  digitalWrite(_cs, HIGH);

  spi_end();
}

void ILI9488::write16BitColor(uint16_t color){
  uint8_t r = (color & 0xF800) >> 11;
  uint8_t g = (color & 0x07E0) >> 5;
  uint8_t b = color & 0x001F;

  r = (r * 255) / 31;
  g = (g * 255) / 63;
  b = (b * 255) / 31;

  spiwrite(r);
  spiwrite(g);
  spiwrite(b);
}

void ILI9488::write24BitColor(uint8_t r, uint8_t g, uint8_t b)
{
  uint8_t buf[3] = {r,g,b};
  SPI.transfer(buf, 3);
}

void ILI9488::drawPixel(int16_t x, int16_t y, uint16_t color) {

  if((x < 0) ||(x >= _width) || (y < 0) || (y >= _height)) return;

  spi_begin();
  setAddrWindow(x,y,x+1,y+1);

  digitalWrite(_dc, HIGH);
  digitalWrite(_cs, LOW);

  write16BitColor(color);

  digitalWrite(_cs, HIGH);

  spi_end();
}


void ILI9488::drawFastVLine(int16_t x, int16_t y, int16_t h,
 uint16_t color) {

  // Rudimentary clipping
  if((x >= _width) || (y >= _height)) return;

  if((y+h-1) >= _height)
    h = _height-y;

  SPI.beginTransaction(SPISettings(24000000, MSBFIRST, SPI_MODE0, SPI_TRANSMITONLY));
  setAddrWindow(x, y, x, y+h-1);

  digitalWrite(_dc, HIGH);
  digitalWrite(_cs, LOW);

  uint8_t r = (color & 0xF800) >> 11;
  uint8_t g = (color & 0x07E0) >> 5;
  uint8_t b = color & 0x001F;

  r = (r * 255) / 31;
  g = (g * 255) / 63;
  b = (b * 255) / 31;

  uint8_t buf[480*3];

  for (int i = 0; i < h*3; i+=3) {
    buf[i + 0] = r;
    buf[i + 1] = g;
    buf[i + 2] = b;
  }
  SPI.transfer(buf, h*3);
  digitalWrite(_cs, HIGH);

  spi_end();
}


void ILI9488::drawFastHLine(int16_t x, int16_t y, int16_t w,
  uint16_t color) {

  // Rudimentary clipping
  if((x >= _width) || (y >= _height)) return;
  if((x+w-1) >= _width)  w = _width-x;

  SPI.beginTransaction(SPISettings(24000000, MSBFIRST, SPI_MODE0, SPI_TRANSMITONLY));

  setAddrWindow(x, y, x+w-1, y);

  digitalWrite(_dc, HIGH);
  digitalWrite(_cs, LOW);

  uint8_t r = (color & 0xF800) >> 11;
  uint8_t g = (color & 0x07E0) >> 5;
  uint8_t b = color & 0x001F;

  r = (r * 255) / 31;
  g = (g * 255) / 63;
  b = (b * 255) / 31;

  uint8_t buf[480*3];

  for (int i = 0; i < w*3; i+=3) {
    buf[i + 0] = r;
    buf[i + 1] = g;
    buf[i + 2] = b;
  }
  SPI.transfer(buf, w*3);
  digitalWrite(_cs, HIGH);

  spi_end();
}

void ILI9488::fillScreen(uint16_t color) {
  fillRect(0, 0,  _width, _height, color);
}

// fill a rectangle
void ILI9488::fillRect(int16_t x, int16_t y, int16_t w, int16_t h,
  uint16_t color) {

  // rudimentary clipping (drawChar w/big text requires this)
  if((x >= _width) || (y >= _height)) return;
  if((x + w - 1) >= _width)  w = _width  - x;
  if((y + h - 1) >= _height) h = _height - y;

  SPI.beginTransaction(SPISettings(24000000, MSBFIRST, SPI_MODE0, SPI_TRANSMITONLY));

  setAddrWindow(x, y, x+w-1, y+h-1);

  digitalWrite(_dc, HIGH);
  digitalWrite(_cs, LOW);

  uint8_t r = (color & 0xF800) >> 11;
  uint8_t g = (color & 0x07E0) >> 5;
  uint8_t b = color & 0x001F;

  r = (r * 255) / 31;
  g = (g * 255) / 63;
  b = (b * 255) / 31;

  uint8_t buf[480*3];

  for (int i = 0; i < w*3; i+=3) {
    buf[i + 0] = r;
    buf[i + 1] = g;
    buf[i + 2] = b;
  }
  
  for (int i = 0; i < h; i++) {
    SPI.transfer(buf, w*3);
  }

  digitalWrite(_cs, HIGH);
  spi_end();
}


// Pass 8-bit (each) R,G,B, get back 16-bit packed color
uint16_t ILI9488::color565(uint8_t r, uint8_t g, uint8_t b) {
  return ((r & 0xF8) << 8) | ((g & 0xFC) << 3) | (b >> 3);
}


#define MADCTL_MY  0x80
#define MADCTL_MX  0x40
#define MADCTL_MV  0x20
#define MADCTL_ML  0x10
#define MADCTL_RGB 0x00
#define MADCTL_BGR 0x08
#define MADCTL_MH  0x04

void ILI9488::setRotation(uint8_t m) 
{
  spi_begin();
  writecommand(ILI9488_MADCTL);
  rotation = m % 4; // can't be higher than 3
  switch (rotation) {
   case 0:
     writedata(MADCTL_MX | MADCTL_BGR);
     _width  = ILI9488_TFTWIDTH;
     _height = ILI9488_TFTHEIGHT;
     break;
   case 1:
     writedata(MADCTL_MV | MADCTL_BGR);
     _width  = ILI9488_TFTHEIGHT;
     _height = ILI9488_TFTWIDTH;
     break;
  case 2:
    writedata(MADCTL_MY | MADCTL_BGR);
     _width  = ILI9488_TFTWIDTH;
     _height = ILI9488_TFTHEIGHT;
    break;
   case 3:
     writedata(MADCTL_MX | MADCTL_MY | MADCTL_MV | MADCTL_BGR);
     _width  = ILI9488_TFTHEIGHT;
     _height = ILI9488_TFTWIDTH;
     break;
  }
  spi_end();
}


void ILI9488::invertDisplay(boolean i) {
  spi_begin();
  writecommand(i ? ILI9488_INVON : ILI9488_INVOFF);
  spi_end();
}
