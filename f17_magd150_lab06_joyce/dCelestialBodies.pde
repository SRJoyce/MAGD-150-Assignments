class dCelestialBodies{
  float r, g, b;
  
  dCelestialBodies(){
  r = 150;
  g = 150;
  b = 150;
  }
  
  void draw(){
  stroke(r, g, b);
  fill(r, g, b);
  ellipse(0, 0, 200, 200);
  }
  
void colorSun(){
if (keyPressed){
  if (key == CODED){
    if (keyCode == UP){
    r += 28;
    g += 20;
    b += 10;
      if (r == 430 || g == 350 || b == 250){ //takes 10 clicks for conditions to be met
        //colorNight();
        r -= 28;
        g -= 20;
        b -= 10;
          if (r == 150 || g == 150 || b == 150){
          r += 28;
          g += 20;
          b += 10;}
          }
        }
      }
    }
  }
  
   void colorMoon(){
r -= 14;
g -= 10;
b -= 5;}
  
  
} // End of class bracket