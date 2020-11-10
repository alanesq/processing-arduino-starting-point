# processing-arduino-starting-point

A basic starting point sketch for receiving data from an Arduino in to Processing

It auto detects serial port used and then receives a list of comma seperated intigers via the serial port

example Arduino sketch to send some data:

                                  void setup() {
                                    Serial.begin(115200);
                                  }
                                  
                                  void loop() {
                                    Serial.print(millis(), DEC); 
                                    Serial.print(",");
                                    Serial.print(23, DEC);
                                    Serial.print(",");
                                    Serial.println(42, DEC);
                                    delay(1000);
                                  }
                                  
For lots of examples on what can be done in Processing see:    https://thecodingtrain.com/

