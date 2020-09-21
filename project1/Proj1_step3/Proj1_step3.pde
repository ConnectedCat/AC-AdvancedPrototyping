ArrayList<Thing> things = new ArrayList<Thing>();

float wildCard = 0;

float pV = 0;
//boolean dirX = true; //true means left

//runs before the main loop
// in preparation
void setup(){
  size(500, 700);
}

//this is the main loop
void draw(){
  background(134, 23, 254);
  
  
  //float cV = millis() % 2000;
  //if( pV > cV ){
  //  wildCard = random(-3, 3);
  //  velX *= wildCard;
  //  println(velX);
  //}
  
  //pV = cV;
  
  for(Thing currentThing : things){
    currentThing.display();
    currentThing.move();
  }
  
  
}

void mouseClicked(){
  things.add(new Thing(mouseX, mouseY));
}
