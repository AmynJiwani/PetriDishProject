//responsible for creating molecules
class Ball {
  PVector position;
  PVector velocity;
  int radius;
  int gold;
  int fuscia;
  int dblue;
  int speed;

  Ball(int gold, int fuscia, int dblue) {
    radius = 25;
    speed = 3;
    position = new PVector(random(250, 550), random(250, 550));
    velocity = new PVector(random(1, 1), random(-1, 1));
    velocity.normalize();
    velocity.mult(speed); //ball b
    this.gold = gold;
    this.fuscia = fuscia;
    this.dblue = dblue;
    
  }

  void draw() {
    strokeWeight(1);
    fill(gold, fuscia, dblue);
    ellipse(position.x, position.y, radius*2, radius*2);
  }

  void increaseSpeed() {
    if (speed < 10) {
      speed++;
      velocity.normalize(); //reset speed to 1
      velocity.mult(speed); 
    }
  }

  void decreaseSpeed() {
    if (speed > 1) { //sets min speed of one
      speed--;
      velocity.normalize(); //reset speed to 1
      velocity.mult(speed); 
    }
  }
  void reset() {
    speed = 5;
    position = new PVector(random(250, 550), random(250, 550));
    velocity = new PVector(random(-1, 1), random(-1, 1));
    velocity.normalize();
    velocity.mult(speed); //ball speed
  }
}