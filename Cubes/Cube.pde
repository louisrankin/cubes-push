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
  void explode(mouseX, mouseY) {
    PVector mouse = new PVector(mouseX, mouseY, 0);
    
    println(mouse.x);
    println(mouse.y);
    println(location.x);
    println(location.y);
    
    
    velocity.z = -5;
  }
  
  

  
  
  // end of class
}
    

