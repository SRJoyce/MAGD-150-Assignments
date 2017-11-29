class grass{
  float r, g, b;
  
  grass(){
  r = 56;
  g = 145;
  b = 66;}
  
  void draw(){
  stroke(r, g, b);
  fill(r, g, b, 25);
  rect(0, 400, 800, 400); //Base grass
  noStroke();
    fill(r-5, g-5, b-5, 50);
  rect(0, 400, 800, 25);
    fill(r-7, g-7, b-7, 50);
  rect(0, 425, 800, 25);
    fill(r-10, g-10, b-10, 50);
 rect(0, 450, 800, 25); 
    fill(r-15, g-15, b-15, 50);
 rect(0, 475, 800, 50);
   fill(r-25, g-25, b-25, 50); //Bottommost strip of grass
 rect(0, 525, 800, 75);
  }
  
  void colorDayGrass(){
if (keyPressed){
  if (key == CODED){
    if (keyCode == UP){
    r += 10;
    g += 10;
    b += 20;
      if (r == 156 || g == 245 || b == 166){ //takes 10 clicks for conditions to be met
        //colorNight();
        r -= 10;
        g -= 10;
        b -= 20;
          if (r == 56 || g == 145 || b == 66){
          r += 10;
          g += 10;
          b += 20;}
          }
        }
      }
    }
  }
  
   void colorNightGrass(){
r -= 5;
g -= 5;
b -= 10;}
  
  
}//End of class