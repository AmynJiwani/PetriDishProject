//responsible for the creation and properties of the dish
class PetriDish {
  int rad;
  PVector centerPoint; //to determine point of vector


  PetriDish() {
    rad = 250; //because diameter is 500
    centerPoint = new PVector(400, 400); //because screen size is 800
  }
  void draw() {
    strokeWeight(5); //sets px for dish to 5
    fill(205);
    ellipse(400, 400, 500, 500); //right in middle of screen
  }
}