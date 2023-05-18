class Cloud {
  int x, y;
  PImage cloud;

  Cloud() {
    x = 200;
    y = 50;
    cloud = loadImage("cloud.png");
  }

  void display() {
    cloud.resize(100,100);
    imageMode(CENTER);
    image(cloud, x, y);
  }
}
