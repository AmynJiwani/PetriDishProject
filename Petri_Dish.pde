//all classes; each in different tabs
Buttons objectbutton;
PetriDish pdish ;
Ball[] balls;
MovementEngine movementEngine; //supports movement in accordance to physics

void setup() {
  size(800, 800);
  pdish = new PetriDish();
  balls = new Ball[5]; //array created to keep molecule count
  balls[0] = new Ball(211, 207, 58);    
  balls[1] = new Ball(139, 24, 118);    
  balls[2] = new Ball(30, 18, 116);    
  balls[3] = new Ball(192, 192, 192);  
  balls[4] = new Ball(205, 127, 50);   
  objectbutton = new Buttons(balls);
  movementEngine = new MovementEngine(pdish);
  pdish = new PetriDish();
}

void draw() {
  background(50);
  pdish.draw(); //used to repeadly call the dish to be drawn
  objectbutton.draw(); //used to repeadly call the dish to be drawn
  frameRate(60);
  for (int ii = 0; ii < objectbutton.moleculeCount; ii++) { //ii used for array 
    balls[ii].draw();   
    movementEngine.movement(balls[ii]);
  }
}

//used for buttons
void mousePressed() {
  objectbutton.mouseclick();
}