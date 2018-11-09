class Bubble {
  //variable set for the bubble class.
  float x = random(width);
  float y = height + random(25, 1000);

  float z = random(0, 20);
  float speed = map(z, 0, 20, 2, 5);
  float rad = map(z, 0, 20, 5, 8);



  void show() {
  // shows the bubble on the screen
    noStroke();
    fill(200, 200);
    ellipse(x, y, rad*.3, rad);
  }

  void move() {
  // moves the bubble up and resets the bubble when it hits the top
    y = y - speed;
    if (y < 0) {
      y = height + random(25, 1000);
      speed = map(z, 0, 20, 2, 5);
      rad = map(z, 0, 20, 5, 8);
    }
  }
}
