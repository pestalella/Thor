### List of connections for the STM32

- SPI for the display  (SS, SCK, MISO, MOSI, RST, DC)
- Analog for Temperature (TEMP_A, TEMP_B)
- I2C for DACs, ADCs  (I2C_SDA, I2C_SCL)
- Rotary encoder 
- SWD  (SWDIO, SWCLK)
- Keyboard address output  (S0, S1, S2)
- Keyboard input (KEYB_IN)
- USART (TX,RX)
- Parallel/Series selection  (PARALLEL_OUT, SERIES_OUT)

### Tasks
- [x] Connect the TFT display and do some testing
- [x] Connect the LM35s and check they can be read
- Connect the rotary encoder and add some code to change settings (voltage, current) with it
- Connect an ADC through I2C
- Connect a DAC through I2C
- Implement setting the desired voltage and current limits
    - Will need 2 cursor keys and the rotary encoder
    - Could also move with the rotary encoder, select by pushing the encoder and exit pushing again
- Relays. Connect them and test the conntrol mechanisms.
- Connect the MOSFET control circuitry.
- Connect a transformer, diode bridge and capacitor bank to one of the channels.
- 
