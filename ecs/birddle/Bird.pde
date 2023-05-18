class Bird {
  int x, y;
  PImage bird;

  Bird() {
    x = width/4;
    y = height/2;
    bird = loadImage("chick.png");
  }

  void display() {
    imageMode(CENTER);
    bird.resize(50, 50);
    image(bird, x, y);
  }




  void move(char dir) {
    if (dir == 'w') {
      y = y - 10;
    } else if (dir == 's') {
      y = y + 10;
    } else if (dir == 'a') {
      x = x - 10;
    } else if (dir == 'd') {
      x = x + 10;
    }
  }
}
