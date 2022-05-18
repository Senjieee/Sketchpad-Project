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
color shrekGreen = color(199, 255, 126);

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
color shrekIndicator;
color colorIndicator;
color backgroundSelector;
color tactileNew;
color tactileSave;
color tactileLoad;

float sliderX;
float x;
float y;
float z;
float s;

PImage shrek;

boolean shrekOn;

void setup() {
  size(800, 600);
  background(white);
  strokeWeight(5);
  selectedColor = black;
  sliderX = 200;
  x = 25;
  y = 5;
  shrek = loadImage("shrek.png");
}

void mouseDragged() {
updateSlider();
  if (mouseY > 100) {
  if (shrekOn == false) {
    stroke(selectedColor);
    strokeWeight(y);
    line(pmouseX, pmouseY, mouseX, mouseY);
    strokeWeight(5);
    }
    if (shrekOn == true) {
    image(shrek, mouseX, mouseY, z, z);
  }
  }
}


void draw() {
  stroke(black);
  fill(grey);
  rect(0, 0, 800, 100);
  stroke(selectedColor);
  if (dist(40, 30, mouseX, mouseY) < 15) {
    selectedColorRed = tactile;
  } else if (shrekOn == true) {
    selectedColorRed = black;
  } else if (selectedColor == red) {
    selectedColorRed = glow;
  } else {
    selectedColorRed = black;
  }
  if (dist(40, 70, mouseX, mouseY) < 15) {
    selectedColorBlue = tactile;
  } else if (shrekOn == true) {
    selectedColorBlue = black;
  } else if (selectedColor == blue) {
    selectedColorBlue = glow;
  } else {
    selectedColorBlue = black;
  }
  if (dist(80, 30, mouseX, mouseY) < 15) {
    selectedColorYellow = tactile;
  } else if (shrekOn == true) {
    selectedColorYellow = black;
  } else if (selectedColor == yellow) {
    selectedColorYellow = glow;
  } else {
    selectedColorYellow = black;
  }
  if (dist(80, 70, mouseX, mouseY) < 15) {
    selectedColorGreen = tactile;
  } else if (shrekOn == true) {
    selectedColorGreen = black;
  } else if (selectedColor == green) {
    selectedColorGreen = glow;
  } else {
    selectedColorGreen = black;
  }
  if (dist(120, 30, mouseX, mouseY) < 15) {
    selectedColorOrange = tactile;
  } else if (shrekOn == true) {
    selectedColorOrange = black;
  } else if (selectedColor == orange) {
    selectedColorOrange = glow;
  } else { 
    selectedColorOrange = black;
  }
  if (dist(120, 70, mouseX, mouseY) < 15) {
    selectedColorPurple = tactile;
  } else if (shrekOn == true) {
    selectedColorPurple = black;
  } else if (selectedColor == purple) {
    selectedColorPurple = glow;
  } else { 
    selectedColorPurple = black;
  }
  if (dist(160, 30, mouseX, mouseY) < 15) {
    selectedColorBlack = tactile;
  } else if (shrekOn == true) {
    selectedColorBlack = black;
  } else if (selectedColor == black) {
    selectedColorBlack = glow;
  } else {
    selectedColorBlack = black;
  }
  if (dist(160, 70, mouseX, mouseY) < 15) {
    selectedColorWhite = tactile;
  } else if (shrekOn == true) {
    selectedColorWhite = black;
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
  if (mouseX > 440 && mouseX < 530 && mouseY > 0 && mouseY < 100) {
    shrekIndicator = tactile;
  } else if (shrekOn == true) {
    shrekIndicator = glow;
  } else {
    shrekIndicator = black;
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
  if (shrekOn == false) {
    colorIndicator = selectedColor;
  } else if (shrekOn == true) {
    colorIndicator = shrekGreen;
    if (dist(sliderX, 50, mouseX, mouseY) < 25) {
    tactileIndicator = glow;
    } else {
      tactileIndicator = black;
    }
  } 
  fill(colorIndicator);
  stroke(tactileIndicator);
  circle(sliderX, 50, x);
  fill(shrekIndicator);
  stroke(shrekIndicator);
  rect(440, 5, 90, 90);
  image(shrek, 445, 10, 80, 80);
  
  fill(white);
  stroke(tactileNew);
  rect(550, 10, 80, 20);
  stroke(tactileLoad);
  rect(550, 40, 80, 20);
  stroke(tactileSave);
  rect(550, 70, 80, 20);
  
  stroke(backgroundSelector);
  rect(650, 10, 130, 80);
  
  fill(black);
  text("New", 577, 25);
  text("Load", 575, 55);
  text("Save", 575, 85);
  
  if (mouseX > 550 && mouseX < 630 && mouseY > 10 && mouseY < 30) {
    tactileNew = glow;
  } else {
    tactileNew = black;
  }
 if (mouseX > 550 && mouseX < 630 && mouseY > 40 && mouseY < 60) {
   tactileLoad = glow;
 } else {
   tactileLoad = black;
 }
 if (mouseX > 550 && mouseX < 630 && mouseY > 70 && mouseY < 90) {
   tactileSave = glow;
 } else {
   tactileSave = black;
 }
}   

void mousePressed() {
  updateSlider();
  if (dist(40, 30, mouseX, mouseY) < 15) {
    shrekOn = false;
    selectedColor = red;
    selectedColorRed = glow;
    selectedColorBlue = black;
    selectedColorYellow = black;
    selectedColorGreen = black;
    selectedColorOrange = black;
    selectedColorPurple = black;
    selectedColorBlack = black;
    selectedColorWhite = black;
    shrekIndicator = black;
  }
  if (dist(40, 70, mouseX, mouseY) < 15) {
    shrekOn = false;
    selectedColor = blue;
    selectedColorRed = black;
    selectedColorBlue = glow;
    selectedColorYellow = black;
    selectedColorGreen = black;
    selectedColorOrange = black;
    selectedColorPurple = black;
    selectedColorBlack = black;
    selectedColorWhite = black;
    shrekIndicator = black;
  }
  if (dist(80, 30, mouseX, mouseY) < 15) {
    shrekOn = false;
    selectedColor = yellow;
    selectedColorRed = black;
    selectedColorBlue = black;
    selectedColorYellow = glow;
    selectedColorGreen = black;
    selectedColorOrange = black;
    selectedColorPurple = black;
    selectedColorBlack = black;
    selectedColorWhite = black;
    shrekIndicator = black;
  }
  if (dist(80, 70, mouseX, mouseY) < 15) {
    shrekOn = false;
    selectedColor = green;
    selectedColorRed = black;
    selectedColorBlue = black;
    selectedColorYellow = black;
    selectedColorGreen = glow;
    selectedColorOrange = black;
    selectedColorPurple = black;
    selectedColorBlack = black;
    selectedColorWhite = black;
    shrekIndicator = black;
  }
  if (dist(120, 30, mouseX, mouseY) < 15) {
    shrekOn = false;
    selectedColor = orange;
    selectedColorRed = black;
    selectedColorBlue = black;
    selectedColorYellow = black;
    selectedColorGreen = black;
    selectedColorOrange = glow;
    selectedColorPurple = black;
    selectedColorBlack = black;
    selectedColorWhite = black;
    shrekIndicator = black;
  }
  if (dist(120, 70, mouseX, mouseY) < 15) {
    shrekOn = false;
    selectedColor = purple;
    selectedColorRed = black;
    selectedColorBlue = black;
    selectedColorYellow = black;
    selectedColorGreen = black;
    selectedColorOrange = black;
    selectedColorPurple = glow;
    selectedColorBlack = black;
    selectedColorWhite = black;
    shrekIndicator = black;
  }
  if (dist(160, 30, mouseX, mouseY) < 15) {
    shrekOn = false;
    selectedColor = black;
    selectedColorRed = black;
    selectedColorBlue = black;
    selectedColorYellow = black;
    selectedColorGreen = black;
    selectedColorOrange = black;
    selectedColorPurple = black;
    selectedColorBlack = glow;
    selectedColorWhite = black;
    shrekIndicator = black;
  }
  if (dist(160, 70, mouseX, mouseY) < 15) {
    shrekOn = false;
    selectedColor = white;
    selectedColorRed = black;
    selectedColorBlue = black;
    selectedColorYellow = black;
    selectedColorGreen = black;
    selectedColorOrange = black;
    selectedColorPurple = black;
    selectedColorBlack = black;
    selectedColorWhite = glow;
    shrekIndicator = black;
  }  
  if (mouseX > 440 && mouseX < 530 && mouseY > 0 && mouseY < 100) {
    shrekOn = true;
    shrekIndicator = glow;
    selectedColorRed = black;
    selectedColorBlue = black;
    selectedColorYellow = black;
    selectedColorGreen = black;
    selectedColorOrange = black;
    selectedColorPurple = black;
    selectedColorBlack = black;
    selectedColorWhite = black;
  }
  if (mouseY > 100) {
  if (shrekOn == false) {
    stroke(selectedColor);
    strokeWeight(y);
    line(pmouseX, pmouseY, mouseX, mouseY);
    strokeWeight(5);
    }
    if (shrekOn == true) {
    image(shrek, mouseX, mouseY, z, z);
  }
  }
 if (mouseX > 550 && mouseX < 630 && mouseY > 10 && mouseY < 30) {
   background(white);
 }
 if (mouseX > 550 && mouseX < 630 && mouseY > 70 && mouseY < 90) {
   selectOutput("Choose a name for your new image file", "saveImage");
 }
}

void saveImage(File f) {
  if (f != null) {
    PImage canvas = get(0, 105, width=800, height=495);
    canvas.save(f.getAbsolutePath());
  }
}

void updateSlider() {
  if (mouseX > 190 && mouseX < 410 && mouseY < 60 && mouseY > 40) {
    sliderX = mouseX;
  } 
  x = map(sliderX, 200, 400, 25, 60);
  y = map(sliderX, 200, 400, 5, 60);
  z = map(sliderX, 200, 400, 40, 200);
  s = map(sliderX, 200, 400, 20, 55);
}
