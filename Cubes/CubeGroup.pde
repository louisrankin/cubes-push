class CubeGroup {
  ArrayList<Cube> cubes;
  
  CubeGroup() {
    cubes = new ArrayList<Cube>();
  }
  
  void run() {
    for (Cube c : cubes) {
      c.display();
    }
  }
  
  void addCube(Cube c) {
    cubes.add(c);
  }
  
  void explode(float x, float y) {
    for (Cube c : cubes) {
      c.explode(x,y);
    }
  }
  
  void reset() {
    int i = 0;
    for (int a = 0; a < numberOfRows; a++) {
      for (int b = 0; b < numberOfRows; b++) {
        
        cubes.get(i).reset(a*sizeOfCube, b*sizeOfCube, 0);
        i++;
      }
    }
  }

}

