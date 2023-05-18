// Keira Jameson | April 11, 2023 | ShapeGame

int x, y, score, tarX, tarY, tarSize, speed;
float dist;
boolean play;
int sec;

void setup() {
  size(500, 500);
  x = 20;
  y = 20;
  score = 0;
  tarX = int(random(width));
  tarY = int(random(height));
  dist = 0;
  tarSize = 100;
  speed = 10;
  play = false;
}

void draw() {
  dist = dist(x, y, tarX, tarY);
  println(dist);
  background(#8CCDEA);
  ellipse(x, y, 20, 20);
  rect(tarX, tarY, 20, 20);
  score();
  target();
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      y = y - 3;
    } else if (key == 's' || key == 'S') {
      y = y + 3;
    } else if (key == 'a' || key == 'A') {
      x = x - 3;
    } else if (key == 'd' || key == 'D') {
      x = x + 3;
    } else if (key == 'q' || key == 'Q') {
      y = y - 3;
      x = x + 3;
    }
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      y = y - speed;
    } else if (keyCode == DOWN) {
      y = y + speed;
    } else if (keyCode == LEFT) {
      x = x - speed;
    } else if (keyCode == RIGHT) {
      x+=speed;
    }
  }
}


void score() {
  fill(255, 128);
  rect(0, 0, width, 30);
  fill(0);
  text("Score: " + score, 10, 25);
  text("Time:" + frameCount/30, width - 200, 2);
}

void target() {
  if (dist<20) {
    tarX = int(random(width));
    tarY = int(random(height));
    if (tarY<60) {
      tarY = 60;
    }
    score = score +100;
    //tarSize = 100;
  }
}
void startScreen() {
  background(0);
  fill(#CE0404);
  textAlign(CENTER);
  text("YOUR MISSION: GET TO 10000 POINTS AS FAST AS YOU CAN", width/2, height/2);
  text("press k to begin...", width/2, height/2 +50);
}
