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

void setup() {
  size(800, 600);
  background(white);
  strokeWeight(5);
  selectedColor = black;
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
}

void mouseReleased() {
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
  stroke(selectedColor);
  line(mouseX, mouseY, mouseX, mouseY);
}
