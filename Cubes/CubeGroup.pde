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
  
  void explode() {
    for (Cube c : cubes) {
      c.explode(mouseX,mouseY);
    }
  }

}

