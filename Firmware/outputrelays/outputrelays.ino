// mode 0=INDEPENDENT, 1=PARALLEL, 2=SERIES
int mode = 0;
bool changed = false;
const int parallelPin = 5;
const int seriesPin = 4;

void modeChange()
{
  if (!changed) {
    Serial.print("Mode change: ");
  
    mode = (mode + 1)%3;
    changed = true;
  }
}

void setup() {
   Serial.begin(9600);

   pinMode(2, INPUT_PULLUP);
   pinMode(seriesPin, OUTPUT);
   pinMode(5, OUTPUT);
   attachInterrupt(digitalPinToInterrupt(2), modeChange, RISING);
   Serial.println("== READY ==");
}

void loop() {
  // put your main code here, to run repeatedly:
  if (changed) {
    digitalWrite(parallelPin, LOW);
    digitalWrite(seriesPin, LOW);
    delay(30);
    if (mode == 1) {
      digitalWrite(parallelPin, HIGH);      
      Serial.println("Parallel");
    } else if (mode == 2) {
      digitalWrite(seriesPin, HIGH);            
      Serial.println("Series");
    } else {
      Serial.println("Independent");
    }
    changed = false;
  }
}
