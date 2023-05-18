class Hat {
  int x,y; 
 PImage hat; 
  Hat() {
    x = width/2; 
    y = height-100;
    hat = loadImage ("hat.png");
  }
  
  void display() {
    imageMode(CENTER);
    image(hat, x,y);
  }
  
  void move(int tempX, int tempY) {
    x = tempX;
    y = tempY;
  }
}
