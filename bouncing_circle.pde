// A circle that bounces similar to the pong game or the old screen saver


// variable set to hold the x,y values and diameter
int x, y, d; 

// variable set to hold the values of the 'rope' connected to the ball
float px, py, angle, speed;

// boolean switches to help with movement
boolean left = true;
boolean down = true;

void setup() {
  size(800, 600);
  x = width/2;
  y = height/2;
  d = 200;
  angle = 0;
  speed = 0.05;
}

void draw() {
  background(151);
  strokeWeight(0);
  ellipse(x, y, d/2, d/2);
  strokeWeight(4);

  // Four points to connect the rope to the side of the screen just to see if I can do it.
  // point1
  px = x + (d/4 * cos(angle + PI));
  py = y + (d/4 * sin(angle + PI));
  point(px, py);
  stroke(255, 0, 0);
  line(x, y, px, py);
  line(0, height/5, px, py);

  // point2
  px = x + (d/4 * cos(angle + PI/2));
  py = y + (d/4 * sin(angle + PI/2));
  point(px, py);
  stroke(0, 255, 0);
  line(x, y, px, py);
  line(0, height/5, px, py);

  // point3
  px = x + (d/4 * cos(angle + PI*2));
  py = y + (d/4 * sin(angle + PI*2));
  point(px, py);
  stroke(0, 0, 255);
  line(x, y, px, py);
  line(0, height/5, px, py);

  // point4
  px = x + (d/4 * cos(angle + PI*3/2));
  py = y + (d/4 * sin(angle + PI*3/2));
  point(px, py);
  stroke(0, 0, 0);
  line(x, y, px, py);
  line(0, height/5, px, py);

  move_horizontally();
  move_vertically();
}


void move_horizontally() {
  // Controls the horizontal movement of the object.
  if (left == true) {
    x -= 1; 
    angle -= speed;
  } 
  if (left != true) {
    x += 1;
    angle += speed;
  }
  
  // Changes the flags  for horizontal movement
  if (x < 0) {
    left = false;
  }
  if (x > width) {
    left = true;
  }
}

void move_vertically() {
  // Controls the vertical movement of the object.
  if (down == true) {
    y -= 1;
  } 
  if (down != true) {
    y += 1;
  }

  // Changes the flags for vertical movement
  if (y < 0) {
    down = false;
  }
  if (y > height) {
    down = true;
  }
}
