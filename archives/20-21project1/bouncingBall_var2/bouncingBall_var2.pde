//float posX, posY;
float[] posXs = new float[5];
float[] posYs = new float[5];
float[] velYs = new float[5];
float[] velXs = new float[5];
float[] cVelYs = new float[5];
float[] cVelXs = new float[5];
//float velX, velY, cVelX, cVelY;

float radius = 75;

void setup() {
  size(800, 600);

  for(int i = 0; i < posXs.length; i++) {
    posXs[i] = random(100, 700);
  }
  
  for(int i = 0; i < posYs.length; i++) {
    posYs[i] = random(100, 500);
  }

  for(int i = 0; i < velXs.length; i++) {
    velXs[i] = random(1, 7);
  }
  for(int i = 0; i < velYs.length; i++) {
    velYs[i] = random(1, 7);
  }
  //posX = 400;
  //posY = 300;

  //velX = 2.3;
  //velY = 3.6;
  
  
}

void draw() {
  background(255);

  for (int i = 0; i < posXs.length; i++) {
    circle(posXs[i], posYs[i], radius*2);

    //this is for the vertical
    if (posYs[i]+radius >= height || posYs[i]-radius <= 0) {
      velYs[i] = velYs[i] * -1;
    }
    //this is for the horisontal
    if (posXs[i]+radius >= width || posXs[i]-radius <= 0) {
      velXs[i] = velXs[i] * -1;
    }

    posXs[i] = posXs[i]+velXs[i];
    posYs[i] = posYs[i]+velYs[i];
  }



  //println(posX);
}

void keyReleased() {
  if (key == 's') {
    for (int i = 0; i < posXs.length; i++) {
      cVelXs[i] = velXs[i];
      cVelYs[i] = velYs[i];
      velXs[i] = 0;
      velYs[i] = 0;
    }
  } else if (key == 'r') {
    for (int i = 0; i < posXs.length; i++) {
      velXs[i] = cVelXs[i];
      velYs[i] = cVelYs[i];
    }
  }
}
