/*[DONE]Use two floating point decimals
[DONE]Least two println.
[DONE] Use at least four of the following: mouseX, mouseY, pmouseX, pmouseY, framCount, width, or height.
[DONE] Use at least four math operators.
[DONE]Use at least three functions under Calculation and Trig.*/

void setup(){
//size(1250, 750);
fullScreen(); //Hit escape to get out of this
background(0, 250, 200);
frameRate(50);
}

void draw(){
float x1 = width * 0.50;
float y1 = height * 0.50;

//TRIANGLE SET2
stroke(255, 255, 0, 90);
fill(255, 0, 0, 90);
beginShape(TRIANGLE_FAN);
vertex(x1, y1);
vertex(mouseX-50.5, mouseY);
vertex(mouseX, mouseY-50.5);
//TRIANGLE2 or really like 4
vertex(x1, y1);
vertex(mouseX, mouseY+50.5);
vertex(mouseX+50.5, mouseY);

//TRIANGLE SET1
stroke(0, 255, 255, 90);
fill(0, 0, 255, 90);
beginShape(TRIANGLE_FAN);
vertex(x1, y1); //This is the center of the screen -- don't change
vertex(mouseX+200.5, mouseY);
vertex(mouseX, mouseY+200.5);
//vertex(x1+100, y1);
//vertex(x1, y1+100);
//TRIANGLE2
vertex(x1, y1); //This is the center of the screen -- don't change
vertex(mouseX-200.5, mouseY);
vertex(mouseX, mouseY-200.5);
//vertex(x1-100, y1);
//vertex(x1, y1-100);
endShape();

int a = max(mouseX, mouseY);
constrain(mouseX, x1/3, y1/3);
println("The X and Y coordinate with the biggest number is " + a + ".");
println("The distance beween your mouse and the center of the screen is " + dist(mouseX, mouseY, x1, y1) + "!");
println("You mouse is at " + mouseX + ", " + mouseY + "!");
//println(dist(mouseX, mouseY, x1, y1));
//println(lerp(x1, y1, 0));
}

void mouseClicked(){
  setup(); //This clears the screen on a click
}

void keyPressed(){
if (key == CODED) {
  if (keyCode == UP) {
    float x1 = width * 0.50;
    float y1 = height * 0.50;
    stroke(0, 255, 0, 90);
    fill(0, 255, 0, 90);
    beginShape(TRIANGLE_FAN);
    vertex(x1, y1);
    vertex(mouseX-50.5, mouseY);
    vertex(mouseX, mouseY-50.5);
    vertex(x1, y1);
    vertex(mouseX, mouseY+50.5);
    vertex(mouseX+50.5, mouseY);
    stroke(0, 255, 0, 90);
    fill(0, 255, 0, 90);
    beginShape(TRIANGLE_FAN);
    vertex(x1, y1); //This is the center of the screen -- don't change
    vertex(mouseX+200.5, mouseY);
    vertex(mouseX, mouseY+200.5);
    vertex(x1, y1); //This is the center of the screen -- don't change
    vertex(mouseX-200.5, mouseY);
    vertex(mouseX, mouseY-200.5);
    endShape();
    int a = max(mouseX, mouseY);
    constrain(mouseX, x1/3, y1/3);
    println("The X and Y coordinate with the biggest number is " + a + ".");
    println("The distance beween your mouse and the center of the screen is " + dist(mouseX, mouseY, x1, y1) + "!");
    println("You mouse is at " + mouseX + ", " + mouseY + "!");
  }
}
}