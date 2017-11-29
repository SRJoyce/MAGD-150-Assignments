/*[2/2] Create and use at least 2 lights (ambient, directional, point).
[1/1] Animate the camera.
[3/1] User has to control over at least one axis of the camera.
[3/2] Use at least 2 3D shapes (box, spheres, Psphere).
[1/1] Ensures the texture tiles seamlessly.
*/
PImage texture;
float eyeX, eyeY, eyeZ;
float rotateX, rotateZ;
float Key;

void setup(){
 size(500, 500, P3D);
 colorMode(RGB);
 rotateX = PI/2;
 rotateZ = -PI/6;
 
 eyeX = width/2;
 eyeY = height/2;
 eyeZ = (height/2)/tan(PI*30/180);
 texture = loadImage("texture.tif");
 textSize(75);
}

void draw(){
  background(64);
  ambientLight(100, 255, 100);
  directionalLight(255, 255, 0, width/2, height, 500);
  
  pushMatrix();
  translate(width/2, width/2, -750);
  noFill();
  stroke(255, 90);
  box(width*2);
  box(width*2.5);
  fill(255, 200, 150);
  text("Use UP/DOWN to move on\nthe y-axis.\nUse LEFT/RIGHT to move on\nthe x-axis.\nUse SHIFT/ALT to move on\nthe z-axis.\nMove your mouse to rotate\nthe shape.\nStop the camera's movement\nwith a any key.", -500, -480, -750);
  popMatrix();
  
  pushMatrix();
  translate(width/2, width/2, -500);
  rotateX(map(-mouseY, 0, height, 0, TWO_PI));
  rotateY(map(-mouseX, 0, width, 0, TWO_PI));
  fill(255, 100, 100, 99);
  stroke(255);
  
  beginShape(QUAD_STRIP); //BEGINNING OF PYRAMID
  texture(texture);
  vertex(-500, -500, -500,texture.width,0); //X
  vertex(125, -125, -125,0,texture.height); //Y
  vertex(-50, 0, 125,texture.width,texture.height); //Z

  vertex(500, -500, -500,texture.width,0); //X
  vertex(125,  125, -125,0,texture.height); //Y
  vertex(-50, 0, 125,texture.width,texture.height); //Z

  vertex(500, 500, -500,texture.width,0); //X
  vertex(-125, 125, -125,0,texture.height); //Y
  vertex(-50, 0, 125,texture.width,texture.height); //Z

  vertex(-500, 500, -500,texture.width,0); //X
  vertex(-125, -125, -125,0,texture.height); //Y
  vertex(-50, 0, 125,texture.width,texture.height); //Z
  
  //The vertex set that closes the final side of the shape.
  vertex(-500, -500, -500,texture.width,0); //X
  vertex(125, -125, -125,0,texture.height); //Y
  vertex(-50, 0, 125,texture.width,texture.height); //Z
  endShape(CLOSE);// END OF PYRAMID  
  popMatrix();

  camera(eyeX, eyeY, eyeZ, width/2, height/2, 0, 0, 1, 0);
  eyeX -= 0.5;
  eyeZ += 0.5;

  if (key == CODED){
    if (keyCode == UP){
      eyeY -= 10;
    }//END OF KEY UP
    if (keyCode == DOWN){
      eyeY += 10;
    }//END OF KEY DOWN
    if (keyCode == RIGHT){
      eyeX += 10;
    }//END OF KEY RIGHT
    if (keyCode == LEFT){
      eyeX -=10;
    }//END OF KEY LEFT
    if (keyCode == SHIFT){
      eyeZ -=10;
    }//END OF KEY SHIFT
    if (keyCode == ALT){
      eyeZ += 10;
    }//END OF KEY ENTER
  }//END OF KEY CODED
 
}//END OF SETUP