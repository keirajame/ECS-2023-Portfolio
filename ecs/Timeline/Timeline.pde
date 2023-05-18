// Keira Jameson | April 6, 2023 | Timeline

void setup() {
  size(950, 400);
}

void draw() {
  background(#99BBD8);
  drawRef();
  histEvent(125, 200, "1914", true, "Hedwig Eva Maria Kiesler/Hedy Lamarr is born Vienna Austria");
  histEvent(270, 200, "1930", true, "Hedy Lamarr attends Drama school at around age of 16");
  histEvent(270, 300, "9/11/1930", false, "Geld Auf Der Strasse(Gold on the Street) was released - Hedys 1st film");
  histEvent(320, 135, "2/14/1933", true, "Exstase was released which brought Hedy to fame - she signed with Hollywoods MGM.");
  histEvent(340, 200, "1937", true, "Hedy Lamarr divorces her Husband and moves away to Hollywood.");
  histEvent(380, 300, "1942", false, "Hedy Lamarr invents a frequency hopping communication device with George Antheil.");
  histEvent(585, 200, "6/3/1965", true, "Hedy Lamarr divorces her last husband, Lewis J. Boies.");
  histEvent(900, 200, "1/19/200", true, "Hedy Lamarr passes away in Florida");
}

void drawRef() {
  textAlign(CENTER);
  textSize(48);
  fill(255);
  text("Hedy Lamarr Timeline", width/2, 60);
  textSize(18);
  text("By:Keira Jameson", width/2, 80);
  strokeWeight(3);
  line(70, 250, 880, 250);
  strokeWeight(3);
  line(70, 245, 70, 255);
  line(160, 245, 160, 255);
  line(250, 245, 250, 255);
  line(340, 245, 340, 255);
  line(430, 245, 430, 255);
  line(520, 245, 520, 255);
  line(610, 245, 610, 255);
  line(700, 245, 700, 255);
  line(790, 245, 790, 255);
  line(880, 245, 880, 255);
  textSize(12);
  text("1910", 70, 265);
  text("2000", 880, 265);
}

void histEvent(int x, int y, String title, boolean top, String detail) {
  if (top == true) {
    line(x, y, x-20, y+50);
  } else {
    line(x, y, x-20, y-50);
  }
  rectMode(CENTER);
  fill(0);
  rect(x, y, 100, 30, 7);
  fill(255);
  text(title, x, y+5);
  if (mouseX>x-10 && mouseX<x+10 && mouseY>y-10 && mouseY<y+10) {
    if (top) {
      text(detail, width/2, 100);
    } else {
      text(detail, width/2, 100);
    }
  }
}
