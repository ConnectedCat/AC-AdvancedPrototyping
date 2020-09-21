class Thing {
  float posX;
  float posY;
  float velX;
  float velY;
  float radius;

  Thing(float _x, float _y) {
    posX = _x;
    posY = _y;
    velX = random(1, 4);
    velY = random(1, 4);
    radius = random(40, 70);
  }

  void display() {
    circle(posX, posY, radius * 2);
  }

  void move() {
    if ( posX + radius >= width || posX - radius <= 0 ) {
      velX *= -1;
    }
    posX += velX;

    if ( posY + radius >= height || posY - radius <= 0 ) {
      velY *= -1;
    }
    posY += velY;
  }
}
