
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
  translate(40,40,0);
  
  for (int a = 0; a < 10; a++) {
    for (int b = 0; b < 10; b++) {
      cubes[a][b].display();
    }
  }
  
  cubeGroup.run();
}


