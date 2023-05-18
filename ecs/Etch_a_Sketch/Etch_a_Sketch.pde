// Keira Jameson | 18 April | Etch-a-Sketch

int x, y;
PImage pic;

void setup() {
  size(800, 658);
  x= 125;
  y = 125;
  pic = loadImage("Etch.png");
  background(#B4B4B4);
}

void draw() {
  image(pic,0,0);
  strokeWeight(2);
  stroke(int(random(0,100)))  ;
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      moveUp(5);
    } else if (keyCode == DOWN) {
      moveDown(5);
    } else if (keyCode == LEFT) {
      moveLeft(5);
    } else if (keyCode == RIGHT) {
      moveRight(5);
    }
  }
}

void mousePressed() {
  saveFrame("Line-######.png");
}

void moveRight(int rep) {
  for(int i=0; i<rep; i=i+1) {
    point(x+i,y);
  }
  x = x + rep;
}
void moveLeft(int rep) {
  for(int i=0; i<rep; i=i+1) {
    point(x-i,y);
  }
  x = x - rep;
}

void moveUp(int rep) {
for(int i=0; i<rep; i=i+1) {
    point(x,y+i);
  }
  y = y - rep;
}

void moveDown(int rep) {
for(int i=0; i<rep; i=i+1) {
    point(x,y+i);
  }
  y = y + rep;
}
