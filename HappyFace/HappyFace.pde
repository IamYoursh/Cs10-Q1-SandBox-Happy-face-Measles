//Global Variables
int reset;
int faceX, faceY, faceDiameter;
int leftEyeX, leftEyeY, leftEyeDiameter;
int rightEyeX, rightEyeY, rightEyeDiameter;
int noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthThick;
float measlesX, measlesY, measlesDiameter;
color red = #FF0303;
color measlesColor = red;
color white = 255;
color colorReset = white;
float bTriangleOneX1, bTriangleOneY1, bTriangleOneX2, bTriangleOneY2, bTriangleOneX3, bTriangleOneY3;
float bTriangleTwoX1, bTriangleTwoY1, bTriangleTwoX2, bTriangleTwoY2, bTriangleTwoX3, bTriangleTwoY3;
float bTriangleTeeX1, bTriangleTeeY1, bTriangleTeeX2, bTriangleTeeY2, bTriangleTeeX3, bTriangleTeeY3;
float bTriangleForX1, bTriangleForY1, bTriangleForX2, bTriangleForY2, bTriangleForX3, bTriangleForY3;
int buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, redTwo, green;
String quit = "X";
PFont titleFont;
color quitButtonBlack = #1C1211;
color quitButtonColor = quitButtonBlack;

void setup() {
  size (700, 500);
  //fullScreen();
  println("Screen Width is", displayWidth, "Screen Height is", displayHeight);
  //String[] fontList = PFont.list(); //To list fonts available on OS
  //println("Start of Console");
  //printArray(fontList);
  //
  population();
  //
  //faceDraw();
  background(0);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  //
}//End setup

void draw() {
  //
  if ( mouseX>buttonX && mouseX<width && mouseY>buttonY && mouseY<buttonHeight) {//Button Hoverever
    buttonColour = redTwo; //Hoverover
  } else {
    buttonColour = green;
  }// End IF
  fill(buttonColour); //green all the time, red with Hoverover
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(quitButtonColor);
  textAlign(CENTER, CENTER); //Aligns the X&Y
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(titleFont, width*1/35);
  text(quit, buttonX, buttonY, buttonWidth, buttonHeight);
  fill(190); //Reset
  //
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  ellipse(leftEyeX, leftEyeY, leftEyeDiameter, leftEyeDiameter);
  ellipse(rightEyeX, rightEyeY, rightEyeDiameter, rightEyeDiameter);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  strokeWeight(mouthThick);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset);
  measlesX = random(width*1/2-height*1/2, width*1/2+height*1/2);
  measlesY = random(height);
  measlesDiameter = random(height*1/60, height*1/35);
  fill(measlesColor);
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
  fill(colorReset);
  //Parameters are randomly set ;)
}//End draw

void keyPressed() {
  //Quit Keyboard Button
  if (key == 'q' || key == 'Q') { 
    exit();
  }//End IF
}//End keypressed

void mousePressed() {
  if ( mouseX>buttonX && mouseX<width && mouseY>0 && mouseY<buttonHeight) {
    exit();
  }//End IF, using mouseX & mouseY
}//End mousePressed
