class Star {
  float x;
  float y;
  float z;
  float speed;
  float r;
  float g;
  float b;

  Star () {
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
    speed = 15;
  }

  void update() {   
    z = z-speed;
    if (z < 1) {
      z = width;
      x = random(-50, 50);
      y = random(-50, 50);
      r = random(0, 175);
      g = random(0, 175);
      b = random(0, 175);
    }
  }

  void show() {
    fill(random(150, 255));
    noStroke();
    float sx = map(x/z, 0, 1, 0, width);
    float sy = map(y/z, 0, 1, 0, height);
    float r = map(z, 0, width, 6, 0);
    ellipse(sx, sy, r, r);
  }

  void ShowPlanet() {
    fill(r, g, b);
    noStroke();
    float sx = map(x/z, 0, 1, 0, width);
    float sy = map(y/z, 0, 1, 0, height);
    float r = map(z, 0, width, 8, 2);
    ellipse(sx, sy, r, r);
  }
}
