//responsible for the movement in accordance to physics
class MovementEngine {
  PVector midPoint;
  int rad;
  
  
  MovementEngine(PetriDish pdish) {
    midPoint = pdish.centerPoint;
    rad = pdish.rad;    
  }
  
  void movement(Ball molecule) {
    molecule.position.add(molecule.velocity);
    if (dist(400, 400, molecule.position.x, molecule.position.y) + 25>= rad) { //prevents "ricepaper" problem by using midpoint of ellipse 
      rebound(molecule);
    }
  }

  void rebound(Ball mcule) {
    PVector norm = new PVector(midPoint.x-mcule.position.x, midPoint.y-mcule.position.y); //derived from processing command reference
    norm.normalize(); //normalizes vector to a length of one
    mcule.velocity = mcule.velocity.sub(norm.mult(2 * (mcule.velocity.dot(norm)))); //Reflect velocity on the midline
    //derived from Processing Command Reference
  }
}