//Ball myBall;

ArrayList<Ball> myBalls = new ArrayList<Ball>();

void setup(){
  size(800, 600);
  
  //myBall = new Ball();
  
  //for(int i = 0; i < 3; i++){
  //  myBalls.add(new Ball());
  //}
}

void draw(){
  background(255);
  
  for(Ball myBall : myBalls){
    myBall.display();
    myBall.move();
  }
}

void mouseReleased(){
  myBalls.add(new Ball(mouseX, mouseY));
}
