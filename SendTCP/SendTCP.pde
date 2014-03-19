import processing.net.*;
Server myServer;
int val = 0;

void setup() 
{
  size(200, 200);
  // Starts a myServer on port 5204
  myServer = new Server(this, 3001); 
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
  String ph_results_data = "??";
  if(key == '1')
  {
    myServer.write(tmpData);
    myServer.write("next1ln \n");
    println(tmpData);
  }
}
