import processing.net.*;
Server myServer;
PHMeter myPHMeter;
O2Analyzer myO2;
Osmo myOsmo;

int val = 0;

void setup() 
{
  size(200, 200);
  // Starts a myServer on port 5204
  myServer = new Server(this, 3001); 
  myPHMeter = new PHMeter();
  myO2 = new O2Analyzer();
  myOsmo = new Osmo();
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
  if(key == '4') // SEND O2 DATA
  {
    myServer.write(myO2.results_data);
    println(myO2.results_data);
  }
  if(key == '5') // SEND Osmo DATA
  {
    myServer.write(myOsmo.results_data);
    println(myOsmo.results_data);
  }

}
