class Cube {
  
  PVector location;
  
  Cube(float x, float y, float z) {
    location = new PVector(x, y, z);
  }
  
  void display() {
    translate(location.x, location.y, location.z);
    box(20);
  }
  
}
    
