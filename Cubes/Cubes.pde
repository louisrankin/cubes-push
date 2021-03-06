CubeGroup cubeGroup;
int size = 1000;
int numberOfRows = 9;
int sizeOfCube = 100;


void setup() {
  size(size, size, P3D);
  background(0);
  // noStroke();
  
  
  
  cubeGroup = new CubeGroup();
  
  for (int a = 0; a < numberOfRows; a++) {
    for (int b = 0; b < numberOfRows; b++) {
      Cube c = new Cube(a*sizeOfCube, b*sizeOfCube, 0);
      cubeGroup.addCube(c);
    }
  }
    
  
}

void draw() {
  lights();
  background(0);
  translate(sizeOfCube,sizeOfCube,0);
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

void keyPressed() {
  if (key == 'a') {
    println("l");
  } else if (key == 'd') {
    println("r");
  } else {
    println("key pressed error");
  }
}
