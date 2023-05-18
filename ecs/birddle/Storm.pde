class Storm {
  int x, y;
  PImage storm;

  Storm() {
    x = 600;
    y = int(random(150,300));
    storm = loadImage("storm.png");
  }

  void display() {
    imageMode(CENTER);
    storm.resize(300, 300);
    image(storm, x, y);
  }

  void move(char dir) {
    if (dir == 'a') {
      x = x - 3;
      if(x<0){
         x = 600; 
         y= int(random(height));
      }
    } else if (dir == 'd') {
      x = x + 1;
    }
  }
}
