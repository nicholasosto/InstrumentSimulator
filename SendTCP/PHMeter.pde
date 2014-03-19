class PHMeter
{
  String calibration_data;
  String metadata;
  String results_data;
  PHMeter()
  {
    calibration_data = "CALIBRATION\r\nP1 pH=7.01\r\n-13.7mV 22.6C\r\nP2 pH=10.04\r\n-184.7mV 22.6C\r\nSLP=96.1%\r\nISO=7.000\r\n13:15 11-18-13\r\n";
    metadata = "Unknown Calibration Data\r\n";
    results_data = "Unknown Results Data\r\n";
  }
}
  
