void settings() {
  size(screenWidth, screenHeight);
}

void setup() {
  background(255);
  noStroke();
  colorMode(HSB, 360, 100, 100, 1);

  for (int i = 0; i < dots.length; i ++ ) {
    // initialise each dot with a random [x,y] position
    dots[i] = new Dot(int(random(screenWidth)), int(random(screenHeight)));
  }
}

void draw() {
  for (int i = 0; i < dots.length; i ++ ) {
    dots[i].draw();
  }
}

void mousePressed() {
  save("painting.png");
}
