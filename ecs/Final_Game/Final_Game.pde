// Emmaline Meadows | Final Perry | April 25
boolean play;
Perry p1;
Log l1, l2, l3;
int lives, level;
float log1Dist, log2Dist, log3Dist;

void setup () {
  size(400, 600);
  p1 = new Perry();
  l1 = new Log();
  l2 = new Log();
  lives = 10;
  level =1;
  play = false;
}

void draw () {
  log1Dist = dist(p1.x, p1.y, l1.x, l1.y);
  println(log1Dist);
  if (!play) {
    startScreen();
  } else {
    background(128);
    drawBackground();
    infoPanel();
    l1.display();
    l1.move('a');
    l2.display();
    l2.move('d');
    p1.display();

    if (log1Dist<15) {
      lives = lives -1;
      p1.x = l1.x;
    }

    if (p1.y>height || p1.x<0 || p1.x>width) {
      gameOver();
    } else if (lives == 0) {
      gameOver();
    }
  }
}

void keyPressed() {
  if (key == 'w') {
    p1.move('w');
  } else  if (key == 'a') {
    p1.move('a');
  } else  if (key == 's') {
    p1.move('s');
  } else  if (key == 'd') {
    p1.move('d');
  } else  if (key == ' ') {
    play = true;
  }
}

void drawBackground () {
  fill(0, 200, 23);
  rect(0, 500, width, 80);
  fill(0, 0, 200);
  rect(0, 150, width, 80);
}

void startScreen() {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("Perry Crossing", width/2, 250);
  text("by Emmaline Meadows", width/2, 320);
  text("press space bar to start", width/2, 400);
}


void gameOver () {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("Game Over", width/2, 300);
  text("Lives: " + lives, width/2, 340);
  text("You reached level:" +level, width/2, 380);
  // text("press any key to start", width/2,360);
  noLoop();
}



void infoPanel() {
  fill(128, 128);
  rect(0, 0, width, 65);
  fill(255);
  text("Lives: " + lives, 80, 50);
}
