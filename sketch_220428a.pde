//Johnny Geng
//2-3
//Apr 28 2022
//Sketchpad Project

color red = color(255, 0, 0);
color blue = color(24, 0, 255);
color yellow = color(255, 247, 0);
color green = color(0, 255, 44);
color orange = color(255, 132, 0);
color purple = color(195, 0, 255);
color grey = color(59, 53, 54);
color black = color(0);
color white = color(255);
color glow = color(238, 245, 153);
color tactile = color(209, 199, 107);

color selectedColor;
color selectedColorRed; 
color selectedColorBlue;
color selectedColorYellow;
color selectedColorGreen;
color selectedColorOrange;
color selectedColorPurple;
color selectedColorBlack;
color selectedColorWhite;
color tactileIndicator;

float sliderX;
float x;
float y;

void setup() {
  size(800, 600);
  background(white);
  strokeWeight(5);
  selectedColor = black;
  sliderX = 200;
  x = 25;
  y = 5;
}

void mouseDragged() {
  updateSlider();
  if (mouseY > 100) {
    stroke(selectedColor);
    strokeWeight(y);
    line(pmouseX, pmouseY, mouseX, mouseY);
    strokeWeight(5);
  }
}

void draw() {
  stroke(black);
  fill(grey);
  rect(0, 0, 800, 100);
  stroke(selectedColor);
  if (dist(40, 30, mouseX, mouseY) < 15) {
    selectedColorRed = tactile;
  } else if (selectedColor == red) {
    selectedColorRed = glow;
  } else {
    selectedColorRed = black;
  }
  if (dist(40, 70, mouseX, mouseY) < 15) {
    selectedColorBlue = tactile;
  } else if (selectedColor == blue) {
    selectedColorBlue = glow;
  } else {
    selectedColorBlue = black;
  }
  if (dist(80, 30, mouseX, mouseY) < 15) {
    selectedColorYellow = tactile;
  } else if (selectedColor == yellow) {
    selectedColorYellow = glow;
  } else {
    selectedColorYellow = black;
  }
  if (dist(80, 70, mouseX, mouseY) < 15) {
    selectedColorGreen = tactile;
  } else if (selectedColor == green) {
    selectedColorGreen = glow;
  } else {
    selectedColorGreen = black;
  }
  if (dist(120, 30, mouseX, mouseY) < 15) {
    selectedColorOrange = tactile;
  } else if (selectedColor == orange) {
    selectedColorOrange = glow;
  } else { 
    selectedColorOrange = black;
  }
  if (dist(120, 70, mouseX, mouseY) < 15) {
    selectedColorPurple = tactile;
  } else if (selectedColor == purple) {
    selectedColorPurple = glow;
  } else { 
    selectedColorPurple = black;
  }
  if (dist(160, 30, mouseX, mouseY) < 15) {
    selectedColorBlack = tactile;
  } else if (selectedColor == black) {
    selectedColorBlack = glow;
  } else {
    selectedColorBlack = black;
  }
  if (dist(160, 70, mouseX, mouseY) < 15) {
    selectedColorWhite = tactile;
  } else if (selectedColor == white) {
    selectedColorWhite = glow;
  } else {
    selectedColorWhite = black;
  }
  if (dist(sliderX, 50, mouseX, mouseY) < 25) {
    tactileIndicator = glow;
  } else if (selectedColor == black) {
    tactileIndicator = white;
  } else {
    tactileIndicator = black;
  } 

  fill(red);
  stroke(selectedColorRed);
  circle(40, 30, 30);
  fill(blue);
  stroke(selectedColorBlue);
  circle(40, 70, 30);
  fill(yellow);
  stroke(selectedColorYellow);
  circle(80, 30, 30);
  fill(green);
  stroke(selectedColorGreen);
  circle(80, 70, 30);
  fill(orange);
  stroke(selectedColorOrange);
  circle(120, 30, 30);
  fill(purple);
  stroke(selectedColorPurple);
  circle(120, 70, 30);
  fill(black);
  stroke(selectedColorBlack);
  circle(160, 30, 30);
  fill(white);
  stroke(selectedColorWhite);
  circle(160, 70, 30);
  if (sliderX < 200) {
    sliderX = 200;
  }
  if (sliderX > 400) {
    sliderX = 400;
  }
  stroke(black);
  line(200, 50, 400, 50);
  fill(selectedColor);
  stroke(tactileIndicator);
  circle(sliderX, 50, x);
}

void mousePressed() {
  updateSlider();
  if (dist(40, 30, mouseX, mouseY) < 15) {
    selectedColor = red;
    selectedColorRed = glow;
    selectedColorBlue = black;
    selectedColorYellow = black;
    selectedColorGreen = black;
    selectedColorOrange = black;
    selectedColorPurple = black;
    selectedColorBlack = black;
    selectedColorWhite = black;
  }
  if (dist(40, 70, mouseX, mouseY) < 15) {
    selectedColor = blue;
    selectedColorRed = black;
    selectedColorBlue = glow;
    selectedColorYellow = black;
    selectedColorGreen = black;
    selectedColorOrange = black;
    selectedColorPurple = black;
    selectedColorBlack = black;
    selectedColorWhite = black;
  }
  if (dist(80, 30, mouseX, mouseY) < 15) {
    selectedColor = yellow;
    selectedColorRed = black;
    selectedColorBlue = black;
    selectedColorYellow = glow;
    selectedColorGreen = black;
    selectedColorOrange = black;
    selectedColorPurple = black;
    selectedColorBlack = black;
    selectedColorWhite = black;
  }
  if (dist(80, 70, mouseX, mouseY) < 15) {
    selectedColor = green;
    selectedColorRed = black;
    selectedColorBlue = black;
    selectedColorYellow = black;
    selectedColorGreen = glow;
    selectedColorOrange = black;
    selectedColorPurple = black;
    selectedColorBlack = black;
    selectedColorWhite = black;
  }
  if (dist(120, 30, mouseX, mouseY) < 15) {
    selectedColor = orange;
    selectedColorRed = black;
    selectedColorBlue = black;
    selectedColorYellow = black;
    selectedColorGreen = black;
    selectedColorOrange = glow;
    selectedColorPurple = black;
    selectedColorBlack = black;
    selectedColorWhite = black;
  }
  if (dist(120, 70, mouseX, mouseY) < 15) {
    selectedColor = purple;
    selectedColorRed = black;
    selectedColorBlue = black;
    selectedColorYellow = black;
    selectedColorGreen = black;
    selectedColorOrange = black;
    selectedColorPurple = glow;
    selectedColorBlack = black;
    selectedColorWhite = black;
  }
  if (dist(160, 30, mouseX, mouseY) < 15) {
    selectedColor = black;
    selectedColorRed = black;
    selectedColorBlue = black;
    selectedColorYellow = black;
    selectedColorGreen = black;
    selectedColorOrange = black;
    selectedColorPurple = black;
    selectedColorBlack = glow;
    selectedColorWhite = black;
  }
  if (dist(160, 70, mouseX, mouseY) < 15) {
    selectedColor = white;
    selectedColorRed = black;
    selectedColorBlue = black;
    selectedColorYellow = black;
    selectedColorGreen = black;
    selectedColorOrange = black;
    selectedColorPurple = black;
    selectedColorBlack = black;
    selectedColorWhite = glow;
  }  
  if (mouseY > 100) {
    stroke(selectedColor);
    strokeWeight(y);
    line(pmouseX, pmouseY, mouseX, mouseY);
    strokeWeight(5);
  }
}

void updateSlider() {
  if (mouseX > 190 && mouseX < 410 && mouseY < 60 && mouseY > 40) {
    sliderX = mouseX;
  } 
  x = map(sliderX, 200, 400, 25, 60);
  y = map(sliderX, 200, 400, 5, 60);
}
