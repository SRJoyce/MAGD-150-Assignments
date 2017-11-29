class clouds{
 float x, y, speed; 
 float r, g, b;
  
  clouds(){ //This is the first constructor (the lack of void makes it a constructor)
  x = 0;
  y = round(random(0, 100));
  speed = 2;
  r = 100;
  g = 100;
  b = 100;
  }
  
  clouds(int _x, int _y){ //This is the second constructor
  x = _x;
  y = _y;
  speed = 2;
  r = 100;
  g = 100;
  b = 100;
  }

  void draw(){
  stroke(r, g, b);
  fill(r, g, b);
  ellipse(x, y, 100, 75);
  ellipse(x - 50, y + 25, 125, 65);
  ellipse(x + 55, y + 45, 130, 60);
  }
 
 void colorDayCloud(){
if (keyPressed){
  if (key == CODED){
    if (keyCode == UP){
    r += 15;
    g += 15;
    b += 15;
      if (r == 250 || g == 250 || b == 250){ //takes 10 clicks for conditions to be met
        //colorNight();
        r -= 15;
        g -= 15;
        b -= 15;
          if (r == 100 || g == 100 || b == 100){
          r += 15;
          g += 15;
          b += 15;}
          }
        }
      }
    }
 }
 
 void colorNightCloud(){
r -= 7.5;
g -= 7.5;
b -= 7.5;}
 
 
  void drift(){
  x = x + 5;
  if (x == 800){
    x = 0;
    y = round(random(0, 100));
  } else {
    x *= 1;}
    }
  }


//End of class bracket