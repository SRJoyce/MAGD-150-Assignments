/*Theme: Documentary
[1/1] Create, load, AND display at least one image.
[1/1] Perform at least one basic transformation: filter, tint, resize.
[1/1] Use live video (capture) or load and play at least one video file (movie).
[1/1] Load and play at least one sound.
[1/1] Use at least one of the following effects for sound: pan, amp, rate, delay, reverb, whitenoise/pinknoise/brownnoise/sinOsc/sawOsc/sqrOsc/TriOsc/Pulse/
[LOTS/4] The sketch has at least four sing/multi-line comments written in complete sentences that explain what the code is doing.
*/

//Never delete the next few lines or you won't have a capture video or sound.
PImage cat;
import processing.video.*;
Capture video;
import processing.sound.*;
BrownNoise noise;

PFont font;
float r = 255;
float g = 0;
float b = 0;
int value = 10;
float vol = 1;
float w = width; //The x value for the image of the kitty.
float w2 = width; //The x value for the video (has to have it's own since the video is inverted).
float w3 = width; //The x value for the text (because w has things that stop it from moving before the text does).

//--------------------------------------------------------------------------------------

void setup(){
size(640, 480);
  //Well, don't delete or tamper with these two, either, or you REALLY won't have a video.
  video = new Capture(this, 640, 480);
  video.start();
  
  cat = loadImage("cat.jpeg");
  
  /*Don't delete these either, or the sound will be gone (it's interesting the setup is
  exactly the same as video's...)*/
  noise = new BrownNoise(this);
  noise.play();
}//END OF SETUP

//--------------------------------------------------------------------------------------

void captureEvent(Capture video){
  video.read();
}//END OF CAPTUREEVENT

//--------------------------------------------------------------------------------------

void draw(){
  background(255); //This clears the "residual" images left over from the transformations
  imageMode(CORNER);
  image(cat, w*9, 10, 620, 460);//Picture of the kitty cat
 
  //Section that flips the image (gotta get that size right though).
  pushMatrix(); //DON'T TOUCH -- kind of brackets in the transformations (bracket 1).
  translate(video.width, 0); //Scoots the video all the way to the right -->
  scale(-1, 1); //Reverses the it's width (x).
  image(video, w2 - 90, 10, 620, 460); //Calls the video so it's affected in in the translate/scale (must be within Push and Pop).
  //Displayed, x, y, width, height (so image() in a command that can work for videos AND pictures.
  popMatrix(); //DON'T TOUCH -- kind of brackets in the transformations (bracket 2).
  
  filter(BLUR, value);
  noise.amp(vol);
  font = createFont("Silom", 10);
  fill(255);
  textFont(font);
  textAlign(CENTER);
  text("Drag your mouse to focus the camera! Find the subject!", w3 + 200, 25);
 
 //This is so the text appears when the video is off screen.
  if (w == 1){
    text("There's your subject! Now, onto filming the documentary, \"The Life of the Housecat.\" \n Nice shot, new guy.", width/2, 440);
    }//END OF w == 1
 
 //This is so the text appears when BLUR is ended.
  if (value <= 0){
    text("Perfect! .. Wait, that's you, not the subject you're recording. \n Hold 'a' to move that camera around.", w3 + 200, 440);


if (keyPressed == true){ 
  if (key == 'a' || key == 'A'){
      w = w - 50;
      w2 = w2 + 50;
      w3 = w3 - 50;
      if (w < 5){
        w = 1;
        }//END OF w2 > 10
      }//END OF KEY RIGHT
    }//END OF KEY PRESSED
  }//END OF IF VALUE = 0
}//END OF DRAW

//--------------------------------------------------------------------------------------

void mouseDragged(){
  value = value - 1;
  vol = vol - 0.1;
  if (value > 10){
    value = 200;
  }//END OF IF VALUE > 10
   if (vol > 0){
    noise.stop();
  }//END OF IF VOL
}//END OF MOUSE DRAGGED