class Cube {
  
  // variables
  PVector location;
  PVector velocity;
  PVector spin;
  float speed = 0.01;
  
  // init
  Cube(float x, float y, float z) {
    location = new PVector(x, y, z);
    velocity = new PVector(0, 0, 0);
    spin = new PVector(0, 0, 0);
  }
  
  // display cube
  void display() {
    
    location.add(velocity);
    
    pushMatrix();
    translate(location.x, location.y, location.z);
    rotateX(spin.x);
    rotateY(spin.y);
    box(sizeOfCube);
    popMatrix();
  }
  
  void reset(float x, float y, float z) {
    
    location = new PVector(x, y, z);
    velocity = new PVector(0, 0, 0);
    spin = new PVector(0, 0, 0);
    
  }
  
  // make cube go backwards
  void explode(float x, float y) {
    PVector mouse = new PVector(x, y, 0);

    float distance = (500 - dist(location.x, location.y, mouse.x, mouse.y)) * speed;
    
    velocity.z = -distance;
    
    if (mouse.x < location.x) {
      float xdistance = location.x - mouse.x;
      velocity.x = xdistance * speed;
    } else {
      float xdistance = mouse.x - location.x;
      velocity.x = -xdistance * speed;
    }
    
    
    if (mouse.y < location.y) {
      float ydistance = location.y - mouse.y;
      velocity.y = ydistance * speed;
    } else {
      float ydistance = mouse.y - location.y;
      velocity.y = -ydistance * speed;
    }
    
    
    
  }
  
  

  
  
  // end of class
}
    

