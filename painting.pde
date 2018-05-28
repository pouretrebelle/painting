int screenWidth = 1000;
int screenHeight = 1000;
int predraw = 300;
int[] prettyHues = {2, 10, 17, 37, 40, 63, 67, 72, 74, 148, 152, 156, 160, 170, 175, 189, 194, 260, 270, 280, 288, 302, 320, 330, 340, 350};
Dot[] dots = new Dot[100];

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
