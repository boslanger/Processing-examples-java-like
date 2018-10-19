class Drop {
  float x = random(width);
  float y = random(-500, -10);
  float z = random (0, 20);
  float yspeed = map(z, 0, 20, 8, 12);
  float len = map(z, 0, 20, 1, 5);
  float r = random(255);
  float g = random(255);
  float b = random(255);


  void update() {   
    y = y + yspeed;
    float grav = map(z, 0, 20, 0, 0.025);
    yspeed = yspeed + grav
      ;
    if (y > height) 
    {
      x = random(width);
      y = random(-100, -10);
      yspeed = map(z, 0, 20, 8, 12);
    }
  }

  void show() {
    float thick = map(z, 0, 20, 1, 2);
    strokeWeight(thick);
    stroke(r, g, b);
    line(x, y, x, y+len);
  }
}
