import processing.net.*;
Server myServer;
PHMeter myPHMeter;
int val = 0;

void setup() 
{
  size(200, 200);
  // Starts a myServer on port 5204
  myServer = new Server(this, 3001); 
  myPHMeter = new PHMeter();
}

void draw() 
{
  //val = (val + 1) % 255;
  //background(val);
  //myServer.write(val);
}

void keyPressed()
{
  String ph_cal_data = "CALIBRATION\r\nP1 pH=7.01\r\n-13.7mV 22.6C\r\nP2 pH=10.04\r\n-184.7mV 22.6C\r\nSLP=96.1%\r\nISO=7.000\r\n13:15 11-18-13\r\n";

  if(key == '1') // SEND PH CALIBRATION DATA
  {
    myServer.write(myPHMeter.calibration_data);
    println(myPHMeter.calibration_data);
  }
  if(key == '2') // SEND PH METADATA
  {
    myServer.write(myPHMeter.metadata);
    println(myPHMeter.metadata);
  }
  if(key == '3') // SEND PH RESULTS DATA
  {
    myServer.write(myPHMeter.results_data);
    println(myPHMeter.results_data);
  }
}
