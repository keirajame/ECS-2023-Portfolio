// Keira Jameson | 25 April | Birddle
boolean play;
Bird b1;
Storm s1;
int lives;
float stormDist;


void setup() {
  size(600, 450);
  b1 = new Bird();
  s1 = new Storm();
  lives = 5;
  play = false;
}

void draw() {
  stormDist = dist(b1.x, b1.y, s1.x, s1.y);
  println(stormDist);
  if (!play) {
    startScreen();
  } else {
    background(#98AAC1);
    drawBackground();
    infoPanel();
    b1.display();
    s1.display();
    s1.move('a');

    if (stormDist<10) {
      lives = lives - 1;
      b1.x = s1.x;
    }

    if (b1.y>375 || b1.x<0 || b1.x>width || b1.y<0 || lives<0) {
      gameOver();
    }
  }
}




void keyPressed() {
  if (key == 'w') {
    b1.move('w');
  } else if (key == 's') {
    b1.move('s');
  } else if (key == 'a') {
    b1.move('a');
  } else if (key == 'd') {
    b1.move('d');
  } else if (key == ' ') {
    play = true;
  }
}


void drawBackground() {
  fill(#1C0DFF);
  rect(0, 375, width, 75);
}

void startScreen() {
  background(0);
  fill(255);
  textSize(20);
  text("Birddle", 265, 175);
  text("by: Keira Jameson", 225, 225);
  text("press the spacebar to start", 195, 275);
}

void gameOver() {
  background(0);
  textAlign(CENTER);
  textSize(30);
  fill(255);
  text("Game Over", width/2, height/2);
  //text("Score: "+score, width/2, 275);
  noLoop();
}

void infoPanel() {
  fill(128, 128);
  rect(0, 375, width, 75);
  fill(255);
  text("Lives: "+lives, 50, 412);
  //text("Score: "+score, 50, 435);
}
