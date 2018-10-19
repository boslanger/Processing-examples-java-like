int x, y, r, g, b;


void setup() {
  size(1200, 800);
  background(151);
  x = width/2;
  y = height/2;
  r = 125;
  g = 125;
  b = 125;
}

void draw() {
  fill(r, g, b);
  noStroke();
  ellipse(x, y, 6, 6);

  int c = floor(random(0, 6));
  switch (c) 
    // Changes the color of the bug, 
    // and keeps r/g/b values within (0,255).
  {
  case 0:
    if (r < 255) {
      r = r+1;
    }
    break;
  case 1:
    if (r > 0) {
      r = r-1;
    }
    break;
  case 2:
    if (g < 255) {
      g = g+1;
    }
    break;
  case 3:
    if (g > 0) {
      g = g-1;
    }
    break;
  case 4:
    if (b < 255) {
      b = b+1;
    }
    break;
  case 5:
    if (b > 0) {
      b = b-1;
    }
    break;
  }

  int w = floor(random(4));
  switch (w)
    // moves the bug and keeps it off of the borders.
  {
  case 0:
    if (x != width) {
      x = x+2;
    }
    break;
  case 1:
    if (x != width) {
      x = x-2;
    }
    break;
  case 2:
    if (y != height) {
      y = y+2;
    }
    break;
  case 3:
    if (y != height) {
      y = y-2;
    }
    break;
  }
  println(r, g, b, x, y);
}
