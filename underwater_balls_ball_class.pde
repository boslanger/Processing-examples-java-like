class Ball {
  boolean left = true;
  boolean down = true;

  float x = random(width);
  float y = random(height);

  float z = random(0, 20);
  float rad = map(z, 0, 20, 50, 5);
  float speed = map(z, 0, 20, 1, 3);
  float alpha = map(z, 0, 20, 20, 255);

  float r = random(0, 255);
  float g = random(0, 255);
  float b = random(50, 255);


  void show() {
    noStroke();
    fill(0, 0, b, alpha);
    ellipse(x, y, rad*2, rad*2);
  }

  void move_horizontally() {
    // Controls the horizontal movement of the object.
    if (left == true) {
      x -= speed;
    } 
    if (left != true) {
      x += speed;
    }
    // Flags for horizontal movement
    if (x-rad < 0) {
      left = false;
      newColor();
    }
    if (x+rad > width) {
      left = true;
      newColor();
    }
  }

  void move_vertically() {
    // Controls the vertical movement of the object.
    if (down == true) {
      y -= speed;
    } 
    if (down != true) {
      y += speed;
    }
    // Flags for vertical movement
    if (y-rad < 0) {
      down = false;
      newColor();
    }
    if (y+rad > height) {
      down = true;
      newColor();
    }
  }

  void newColor() {
    r = random(0, 255);
    g = random(0, 255);
    b = random(50, 255);
    z = random(0, 20);
    rad = map(z, 0, 20, 50, 5);
    speed = map(z, 0, 20, 1, 3);
    alpha = map(z, 0, 20, 20, 255);
  }
}
