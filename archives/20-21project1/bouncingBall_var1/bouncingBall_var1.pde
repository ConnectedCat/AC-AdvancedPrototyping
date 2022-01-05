float posX, posY;
float velX, velY;

float radius = 75;

void setup(){
  size(800, 600);
  
  posX = 400;
  posY = 300;
  
  velX = 2.3;
  velY = 3.6;
}

void draw(){
  background(255);
  circle(posX, posY, radius*2);
  
  //this is for the vertical
  if(posY+radius >= height || posY-radius <= 0){
    velY = velY * -1;
  }
  //this is for the horisontal
  if(posX+radius >= width || posX-radius <= 0){
    velX = velX * -1;
  }
  
  posX = posX+velX;
  posY = posY+velY;
  //println(posX);
}
