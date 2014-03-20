import processing.net.*;
Server myServer;
PHMeter myPHMeter;
O2Analyzer myO2;

int val = 0;

void setup() 
{
  size(200, 200);
  // Starts a myServer on port 5204
  myServer = new Server(this, 3001); 
  myPHMeter = new PHMeter();
  myO2 = new O2Analyzer();
}

void draw() 
{
  //val = (val + 1) % 255;nich
  //background(val);
  //myServer.write(val);
}

void keyPressed()
{
  

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
