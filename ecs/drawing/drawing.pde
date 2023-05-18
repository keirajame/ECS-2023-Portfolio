// Keira Jameson | March,23,2023 | Drawing

void setup() {
  size(1000,1000);
}

void draw() {
  background(180,160,210);
  drawCreature(mouseX,mouseY);
  //drawCreature(200,500);
  //drawCreature(random(width),random(height));

}

void drawCreature(float x, float y) {
  fill(#BCE6C2);
  ellipse(x,y+100,300,300);
  ellipse(x-130,y+200,120,175);
  ellipse(x+130,y+200,120,175);
  ellipse(x-175,y+275,200,100);
  ellipse(x+175,y+275,200,100);
  ellipse(x,y+30,250,150);//Draws the head
  ellipse(x-75,y-20,120,120);
  ellipse(x+75,y-20,120,120);
  fill(255);
  ellipse(x-75,y-20,100,100); //Draw the left eyeball
  ellipse(x+75,y-20,100,100); //Draw the right eyeball
  fill(#FFA36E);
  ellipse(x-50,y-20,50,50);
  ellipse(x+50,y-20,50,50);
  fill(0);
  ellipse(x-50,y-20,50,17);
  ellipse(x+50,y-20,50,17);
  fill(255);
  ellipse(x-70,y-30,25,25);
  ellipse(x+70,y-30,25,25);
  line(x-20,y+20,x+20,y+20); // draw the mouth
}
