class stars{
float x, y;
float r, g, b;
  
  stars(){
  x = round(random(0, 800));
  y = round(random(0, 250));
  r = 255;
  b = 255;
  g = 255;
}
  
  stars(int _x, int _y){
  x = _x;
  y = _y;
  r = 255;
  b = 255;
  g = 255;
  }
  
  void draw(){
  stroke(r, g, b, 25);
  fill(r, g, b, 25);
  ellipse(x, y, 5, 5);
  }
  
    void colorDayStars(){
if (keyPressed){
  if (key == CODED){
    if (keyCode == UP){
    r += 10;
    g += 10;
    b += 10;
      if (r == 355 || g == 355 || b == 355){ //takes 10 clicks for conditions to be met
        //colorNight();
        r -= 10;
        g -= 10;
        b -= 10;
          if (r == 255 || g == 255 || b == 255){
          r += 10;
          g += 10;
          b += 10;}
          }
        }
      }
    }
println("Star red value is " + r);
println("Star green value is " + g);
println("Star blue value is " + b);  
}
  
  
   void colorNightStars(){
r -= 5;
g -= 5;
b -= 5;}
  
  
} //End of class bracket