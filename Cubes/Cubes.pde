Cube cube;

void setup() {
  size(500, 500, P3D);
  background(0);
  lights();
  
  cube = new Cube(250,250,0);
}

void draw() {
  cube.display();
}

void mouseClicked() {
  cube.explode();
}

