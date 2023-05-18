class Log {
  int x, y;
  PImage log;

  Log() {
    x = width-100;
    y = 200;
    log = loadImage ("log.png");
  }

  void display() {
    imageMode(CENTER);
    log.resize(50, 50);
    image(log, x, y);
  }

  void move(char dir) {
    if (dir == 'a') {
      x = x - 2;
      if(x<0) {
        x = width;
      }
    } else if (dir == 'd') {
      x = x + 2;
      if (x>width) {
        x = 0;
      }
    }
  }
}
