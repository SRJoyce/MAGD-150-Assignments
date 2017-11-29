/*[1/1] Use mouse-based interaction
[1/1] Use keyboard-based interaction
[5/3] Use if-else conditionals
[1/1] Use one type of loop*/

float x2, x3;
float x;
float speed;
float maxBoundry;
float minBoundry;
float bubblex;
float bubbleS;
float w;
float h, h1, h2, h3;
float bubble;

void setup(){
size(displayWidth, displayHeight);
surface.setResizable(true);
x2 = width * .70;
maxBoundry = width * 0.71;
minBoundry = width * 0.67;
speed = width * 0.001;
bubblex = width;
bubbleS = width * 0.001;
w = random(width * 0, width * 1);
h = random(height * 0, height *1);
h1 = random(height * 0, height *1); 
h2 = random(height * 0, height *1);
h3 = random(height * 0, height *1);
}


void draw(){
background(102, 205, 170);
//BUBBLES PART I-------------------------------------------------------------------------------
for (int i = 0; i < 40; i = i + 40){
fill(40, 120, 220, 90);
stroke(0, 80, 180, 90);
ellipse(bubblex, height * 0.12, width * 0.06, height * 0.1);
ellipse(bubblex - width * 0.2, height * 0.82, width * 0.06, height * 0.1);
ellipse(bubblex - width * 0.33, height * 0.12, width * 0.06, height * 0.1);
ellipse(bubblex - width * 0.4, height * 0.70, width * 0.06, height * 0.1);
}
bubblex -= bubbleS;
//width -= width * 0.001;
//FLIPPERS/DELIVERY SYSTEM--------------------------------------------------------------
text(mouseY, mouseX, mouseY);
text(mouseX, mouseX+25, mouseY);
fill(245, 150, 10);
stroke(225, 130, 0, 80);
x3 = width * 0.25;
ellipse(x2, height * 0.25, width * 0.1, height * 0.30); //Top right
ellipse(x2, height * 0.75, width * 0.1, height * 0.30); //Bottom right
//Back flippers now vvv
ellipse(x3, height * 0.70, width * 0.25, height * 0.1); //Bottom left
ellipse(x3, height * 0.30, width * 0.25, height * 0.1); //Top left
x2 += speed;
if (x2 <= minBoundry){
  speed = -speed;
}
if (x2 >= maxBoundry){
  speed = -speed;
}

println("This is the minBoundry " + minBoundry + ".");
println("This is the maxBoundy " + maxBoundry + ".");
//HEAD + TAIL---------------------------------------------------------------------------
fill(245, 150, 10);
stroke(225, 130, 0, 80);
ellipse(width * 0.75, height/2, width/4, height/4);
ellipse(width * 0.25, height/2, width * 0.17, height * 0.1);
//EYES/OLIVES----------------------------------------------------------------------------
fill(0);
stroke(0);
ellipse(width * 0.78, height * 0.40, width * 0.025, height * 0.015);
ellipse(width * 0.78, height * 0.60, width * 0.025, height * 0.015);
//SHELL/PIZZA------------------------------------------------------------
fill(100, 60, 60);
stroke(80, 40, 40, 80);
ellipse(width/2, height/2, width * 0.55, height * 0.55);
fill(245, 150, 10);
stroke(225, 130, 0, 80);
ellipse(width/2, height/2, width * 0.50, height * 0.50);
//PEPPERONI-----------------------------------------------------------------------------
fill(225, 70, 10);
stroke(255, 50, 0);
ellipse(width * 0.42, height * 0.32, width * 0.1, height * 0.1);
ellipse(width * 0.57, height * 0.57, width * 0.09, height * 0.09);
ellipse(width * 0.34, height * 0.62, width * 0.08, height * 0.08);
ellipse(width * 0.59, height * 0.67, width * 0.1, height * 0.1);
ellipse(width * 0.66, height * 0.38, width * 0.09, height * 0.09);
ellipse(width * 0.32, height * 0.45, width * 0.07, height * 0.07);
ellipse(width * 0.41, height * 0.43, width * 0.1, height * 0.1);
ellipse(width * 0.65, height * 0.5, width * 0.1, height * 0.1);
ellipse(width * 0.47, height * 0.58, width * 0.06, height * 0.06);
ellipse(width * 0.43, height * 0.70, width * 0.07, height * 0.07);
ellipse(width * 0.52, height * 0.35, width * 0.1, height * 0.1);
//BUBBLES PART II ----------------------------------------------------------------------
//while (frameCount > 0){ //THIS IS THE LOOP PART (that I can't get to work)
//for (int i = 0; i < 40; i = i + 40){
fill(40, 120, 220, 90);
stroke(0, 80, 180, 90);
ellipse(bubblex - w, h, width * 0.06, height * 0.1);
ellipse(bubblex - w, h1, width * 0.06, height * 0.1);
ellipse(bubblex + w, h2, width * 0.06, height * 0.1);
ellipse(bubblex + w, h3, width * 0.06, height * 0.1);//}

/*if (bubblex < width * 0.005);{
  bubblex = width + 5;}*/
//BOUNDRIES FOR FLIPPERS----------------------------------------------------------------
if (width <= maxBoundry){
  setup();}
if (width <= minBoundry){
  setup();}

if (bubblex < 0){
  bubblex = width;}
}

void keyPressed(){ //This is how to speed up their movement
  speed= speed +1;
  bubbleS = bubbleS + 0.5;
}

void mouseClicked(){
  setup();}