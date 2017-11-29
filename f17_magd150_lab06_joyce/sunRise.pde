class sunRise{
float r, g, b;
  
sunRise(){
 r = 0;
 g = 0;
 b = 0;
}

void sky(){
 fill(r, g, b, 50);
 noStroke();
 rect(0, 0, 800, 400); //Biggest background rectangle
   fill(r-25, g-25, b-25, 50); //Topmost strip of sky
 rect(0, 0, 800, 150);
  fill(r-15, g-15, b-15, 50); //Second strip of sky
 rect(0, 150, 800, 125);
  fill(r-10, g-10, b-10, 50); //Third strip of sky
 rect(0, 275, 800, 50);
   fill(r-7, g-7, b-7, 50); //Fourth strip of sky
 rect(0, 325, 800, 25);
   fill(r-5, g-5, b-5, 50); //Fifth strip of sky
 rect(0, 350, 800, 25);
   fill(r -2, g-2, b-2, 50); //Sixth strip of sky
 rect(0, 375, 800, 25);

/*That was to get the entire fading effect, where the top of the sky becomes
darker faster than the bottom part.*/
}

void colorDay(){
if (keyPressed){
  if (key == CODED){
    if (keyCode == UP){
    r += 16;
    g += 25;
    b += 24;
      if (r == 160 || g == 250 || b == 240){ //takes 10 clicks for conditions to be met
        //colorNight();
        r -= 8;
        g -= 100;
        b -= 8;
          if (r == 0 || g == 0 || b == 0){
          r += 16;
          g += 25;
          b += 24;}
          }
        }
      }
    }
println("Red value is " + r);
println("Green value is " + g);
println("Blue value is " + b);
}

void colorNight(){
r -= 8;
g -= 13;
b -= 12;
  
if (keyPressed){
  if (key == CODED){
    if (keyCode == DOWN){
    r -= 10;
    g -= 10;
    b -= 10;}
         }
      }
   }
}

/*So, the color for night will be 60, 50, 150
The color for day will be 160, 250, 240
*/

/*
println("Red value is " + r);
println("Green value is " + g);
println("Blue value is " + b);
*/