class CubeGroup {
  ArrayList<Cube> cubes;
  
  School() {
    cubes = new ArrayList<Cube>();
  }
  
  void run() {
    for (Cube c : cubes) {
      c.display(cubes);
    }
  }
  
  void addCube(Cube c) {
    cubes.add(c);
  }

}

