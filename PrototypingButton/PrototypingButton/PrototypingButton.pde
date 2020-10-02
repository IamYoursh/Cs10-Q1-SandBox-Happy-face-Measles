//Global Variables
int buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, red, blue;


void setup() {
  size(400, 300);
  //population
  buttonX = width*1/4;
  buttonY = height*1/4;
  buttonWidth = width*1/2;
  buttonHeight = height*1/2;
  red = #FF0505;
  blue = #0513FF;
}//End setup

void draw() {
  
  if ( mouseX>width*1/4 && mouseX<width*3/4 && mouseY>height*1/4 && mouseY<height*3/4) {//Button Hoverever
    buttonColour = red; //Hoverover
  } else {
    buttonColour = blue;
  }// End IF
  //fill(); //blue all the time, red with Hoverover
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
}//End draw

void keyPressed() {
  //Quit Keyboard Button
  if (key == 'q' || key == 'Q') { 
    exit();
  }//End IF
}//End keypressed

void mousePressed() {
  if ( mouseX>width*1/4 && mouseX<width*3/4 && mouseY>height*1/4 && mouseY<height*3/4) {
  }//End IF, using mouseX & mouseY
}//End mousePressed
