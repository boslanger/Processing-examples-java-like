Ball [] balls = new Ball [37];
Bubble [] bubbles = new Bubble [100];

void setup() {
  size(1920, 1020);
  for (int i = 0; i<balls.length; i++) {
    balls[i] = new Ball();
  }
  for (int i = 0; i<bubbles.length; i++) {
    bubbles[i] = new Bubble();
  }
};

void draw() {
  background(1, 128, 183);
  for (int i = 0; i < balls.length; i++) {

    balls[i].show();
    balls[i].move_horizontally(); 
    balls[i].move_vertically();
  }
  for (int i = 0; i<bubbles.length; i++) {
    bubbles[i].show();
    bubbles[i].move();
  }
}

//void checkHit() {
//  float deltaX = balls.x[1] - balls.x[0];
//  float deltaY = balls.y[1] - balls.y[0];
//  float distance = sqrt(deltaX * deltaX + deltaY * deltaY);
//}






// distance check function runs:
// sqrt((x2-x1)^2 + (y2-y1)^2)
// if-else if distance < sum(radi) then {} else {}
