class Cube {
  
  // variables
  PVector location;
  PVector velocity;
  
  // init
  Cube(float x, float y, float z) {
    location = new PVector(x, y, z);
    velocity = new PVector(0, 0, 0);
  }
  
  // display cube
  void display() {
    
    location.add(velocity);
    translate(location.x, location.y, location.z);
    box(10);
  }
  
  // make cube go backwards
  void explode() {
    velocity.z = -5;
  }
  
  // end of class
}
    

