size(500, 600);
String title= "Bruh?";
PFont titleFont;
String[] fontList = PFont.list(); //To list all fonts available on system
println("Start of Console");
printArray(fontList);
titleFont = createFont ("High Tower Text", 35); //Font size 35
color green = #318135;

rect(width*1/4, height*0, width*1/2, height*1/10);
fill(green);
textAlign(CENTER, CENTER); //Aligns the X&Y
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
textFont(titleFont, 35);
text(title, width*1/4, height*0, width*1/2, height*1/10);
fill(190); //Reset
