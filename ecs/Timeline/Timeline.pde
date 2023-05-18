// Emmaline Meaodws | April 6,2023 | Timeline

void setup() {
  size(950, 400);
}

void draw() {
  background(#61B2C9);
  drawRef();
  histEvent(70, 200, "1950", true, "Joe Hisaishi is born in Nakano, Japan");
  histEvent(265, 200, "1969", true, "Attended the Kunitachi College of Music");
  histEvent(360,300,"1974",false, "Wrote music for the anime series Gyatoruzu" );
  histEvent(450,200,"1981",true, "Hisaishi released his first album" );
  histEvent(510,300,"1983",false, "Met film director Hayao Miyazaki and started working with them" );
  histEvent(570,200,"1985",true, " Founded his own recording studio" );
  histEvent(670,300,"1998",false, "Write the soundtrack for the Winter Paralympics" );
  histEvent(800,200,"2011",true, "Japanese Academy Award for Best Music" );
}

void drawRef() {
  textAlign(CENTER);
  textSize(35);
  fill(0);
  text("Joe Hisaishi Timeline", width/2, 60);
  textSize(20);
  text("by Emmaline Meadows", width/2, 80);
  strokeWeight(3);
  line(50, 250, 900, 250);
  line(50, 245, 50, 255);
  line(900, 245, 900, 255);
  textSize(16);
  text("1950", 50, 270);
  text("2020", 900, 270);
}

void histEvent(int x, int y, String title, boolean top, String detail) {
  if (top == true) {
    line(x, y, x-20, y+50);
  } else {
 line(x, y, x-20, y-50);
}
  rectMode(CENTER);
  if(mouseX>x-50 && mouseX<x+50 && mouseY>y-15 && mouseY<y+15) {
 fill(200);
  } else {
 fill (222);
  }
  strokeWeight(2);
  rect(x, y, 100, 30, 7);
  fill(0);
  text(title, x, y+5);
  if(mouseX>x-50 && mouseX<x+50 && mouseY>y-15 && mouseY<y+15) {
   if(top) {
  text(detail,width/2,150);
   } else {
  text(detail,width/2,360);
   }
   
  }
}
