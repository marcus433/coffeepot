/*
Tweet-a-pot Donovan Roudabush 2013
Please email changes to sharksfan98@gmail.com so I
can improve this code!

Enables blinking/relay control over twitter, using python code
Based off of Blink and Serial demo code

*/

int relayPin = 13; // LED connected to digital pin 13
int incomingByte = 0; //declare incoming byte
// The setup() method runs once, when the sketch starts

void setup() {
// initialize the digital pin as an output:
pinMode(relayPin, OUTPUT);
Serial.begin(19200); // set up Serial library at 19200 bps

Serial.println("Arduino is ready!");
}

// the loop() method runs over and over again,
// as long as the Arduino has power

void loop()
{
if (Serial.available() > 0) {
// read the incoming byte:
incomingByte = Serial.read();
Serial.println(incomingByte);
if (incomingByte == 49){
digitalWrite(relayPin, HIGH);
} else {
digitalWrite(relayPin, LOW);
}

// say what you got:
Serial.print("I received: ");
Serial.println(incomingByte, DEC);
}
}
