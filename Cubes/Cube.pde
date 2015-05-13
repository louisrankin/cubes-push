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
    
    pushMatrix();
    translate(location.x, location.y, location.z);
    box(50);
    popMatrix();
  }
  
  // make cube go backwards
  void explode() {
    velocity.z = -5;
  }
  
  void mouseClicked() {
    explode();
  }

  
  
  // end of class
}
    

