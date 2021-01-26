class Ball{
  float posX, posY;
  float velX, velY;
  
  float radius;
  color bCol;
  boolean bStroke;
  
  Ball(float _posX, float _posY){
    posX = _posX;
    posY = _posY;
    
    velX = random(-4, 4);
    velY = random(-3, 3);
    
    radius = random(60, 120);
    
    bCol = color(random(255), random(255), random(255));
    
    bStroke = false;
  }
  
  void display(){
    fill(bCol); //set color
    
    if(!bStroke){ //set stroke
      noStroke();
    }
    
    circle(posX, posY, radius*2); //draw the circle
  }
  
  void move(){
    if(posX+radius >= width || posX-radius <= 0){
      velX *= -1;
    }
    
    if(posY+radius >= height || posY-radius <= 0){
      velY *= -1;
    }
    
    posX += velX;
    posY += velY;
  }
  
}
