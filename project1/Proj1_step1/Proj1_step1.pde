float posX = 100.0;
float posY = 100.0;
float velX = 3;
float velY = 3;

float radius = 50;
//boolean dirX = true; //true means left

//runs before the main loop
// in preparation
void setup(){
  size(500, 700);
  
}

//this is the main loop
void draw(){
  background(134, 23, 254);
  circle(posX, posY, radius * 2);
  
  if( posX + radius >= width || posX - radius <= 0 ) {
    velX *= -1;
  }
  posX += velX;
  
  if( posY + radius >= height || posY - radius <= 0 ) {
    velY *= -1;
  }
  posY += velY;
}
