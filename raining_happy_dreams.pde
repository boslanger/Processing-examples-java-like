Drop [] drops = new Drop[500];

void setup() {
  size(1920, 1080);
  for (int i = 0; i < drops.length; i++) 
  {
    drops[i] = new Drop();
  }
}

void draw() {
  background(33, 1, 51);
  for (int i = 0; i < drops.length; i++) 
  {
    drops[i].update();
    drops[i].show();
  }
}
