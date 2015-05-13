
CubeGroup cubeGroup;

void setup() {
  size(500, 500, P3D);
  background(0);
  lights();
  
  
  cubeGroup = new CubeGroup();
  
  for (int a = 0; a < 10; a++) {
    for (int b = 0; b < 10; b++) {
      Cube c = new Cube(a*50, b*50, 0);
      cubeGroup.addCube(c);
    }
  }
    
  
  
}

void draw() {
  
  background(0);
  translate(40,40,0);
  
  cubeGroup.run();
}

void mouseClicked() {
  if (mouseButton == LEFT) {
    cubeGroup.explode(mouseX,mouseY);
  } else if (mouseButton == RIGHT) {
    cubeGroup.reset();
  } else {
    println("mouse button error");
  }
  
}
