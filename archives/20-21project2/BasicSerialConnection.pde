import processing.serial.*;

Serial myConnection;

float diameter = 400;
float circleHue = 0;

float background = 0;

void setup(){
  size(600, 600);
  
  colorMode(HSB, 360, 100, 100);
  
  printArray(Serial.list());
  myConnection = new Serial(this, Serial.list()[0], 9600);
  myConnection.bufferUntil('\n');
}

void draw(){
  if(background == 1){
    background(0, 0, 100);
  }
  else {
    background(0, 100, 0);
  }
  
  fill(circleHue, 100, 100);
  circle(width/2, height/2, diameter);
}

void serialEvent(Serial conn){
  String fromSerial = conn.readString();
  
  if(fromSerial != null){
    fromSerial = trim(fromSerial);
    
    String[] data = split(fromSerial, ',');
    printArray(data);
    
    if(data.length == 2){
      background = float(data[0]);
      
      circleHue = float(data[1]);
      circleHue = map(circleHue, 0, 4096, 0, 360);
    }
    //for the circle diameter
    //diameter = float(fromSerial);
    //diameter = constrain(diameter, 30, width);
    //diameter = map(diameter, 0, 4096, 30, width);
    
    //circleHue = float(fromSerial);
    //circleHue = map(circleHue, 0, 4096, 0, 360);
  }
 
  println( fromSerial );
  
}
