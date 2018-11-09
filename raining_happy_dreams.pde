Drop [] drops = new Drop[500];

void setup() {
  size(1920, 1080);
  // loop to initialize the drops
  for (int i = 0; i < drops.length; i++) 
  {
    drops[i] = new Drop();
  }
}

void draw() {
  background(33, 1, 51);
  // loop that draws and then moves the drops downward.
  for (int i = 0; i < drops.length; i++) 
  {
    drops[i].update();
    drops[i].show();
  }
}
