class Cube {
  
  // variables
  PVector location;
  PVector velocity;
  PVector spin;
  float speed = 0.01;
  boolean exploded;
  PVector explosionPoint;
  
  // init
  Cube(float x, float y, float z) {
    location = new PVector(x, y, z);
    velocity = new PVector(0, 0, 0);
    spin = new PVector(0, 0, 0);
    exploded = false;
  }
  
  // display cube
  void display() {
    
    location.add(velocity);
    
    if (exploded) {
      if (explosionPoint.x > location.x) {
        spin.x += speed;
      } else {
        spin.x -= speed;
      }
      if (explosionPoint.y > location.y) {
        spin.y += speed;
      } else {
        spin.y -= speed;
      }
    }
    
    pushMatrix();
    translate(location.x, location.y, location.z);
    rotateX(spin.y);
    rotateY(spin.z);
    box(sizeOfCube);
    popMatrix();
  }
  
  void reset(float x, float y, float z) {
    
    location = new PVector(x, y, z);
    velocity = new PVector(0, 0, 0);
    spin = new PVector(0, 0, 0);
    exploded = false;
    
  }
  
  // make cube explode
  void explode(float x, float y) {
    PVector mouse = new PVector(x, y, 0);

    float distance = (size - dist(location.x, location.y, mouse.x, mouse.y)) * speed;
    
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
    
    spin.x = 0.1;
    spin.y = 0.1;
    
    exploded = true;
    explosionPoint = mouse;
    
    
    
  }
  
  

  
  
  // end of class
}
    

