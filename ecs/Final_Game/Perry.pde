class Perry {
  int x, y;
  PImage perry;

  Perry() {
    x = width/2;
    y = height-50;
    perry = loadImage ("perry.png");
  }

  void display() {
    imageMode(CENTER);
    perry.resize(55, 55);
    image(perry, x, y);
  }

  void move(char dir) {
    if (dir == 'w') {
      y = y - 20;
    } else if (dir == 'a') {
      x = x - 20;
    } else if (dir == 's') {
      y = y + 20;
    } else if (dir == 'd') {
      x = x + 20;
    }
  }
}
