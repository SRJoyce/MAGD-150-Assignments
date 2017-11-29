/*(Writing this super quick so I don't forget it)
Ok, so I want this to be a sunny sky turning into a night sky.
This can be done if I make the color of the sky variables (r, g, and b)
and then have it change either as the frame count goes up or as the 
the player holds the arrow keys in a certain direction

[15/3] Define and call three of your own fuctions.
[5/1] Define and construct an instance of one class.
[LOTS/4] Let the code at 4 single or muli-line comments.*/

sunRise dawn;
clouds cloud1;
clouds cloud2;
clouds cloud3;
grass landscape;
dCelestialBodies solar;

stars sparkle;
stars sparkle2;
stars sparkle3;
stars sparkle4;
stars sparkle5;
stars sparkle6;
stars sparkle7;
stars sparkle8;
stars sparkle9;
stars sparkle10;

void setup(){
size(800, 600);
background(56, 145, 66, 20);
dawn = new sunRise();
cloud1 = new clouds();
cloud2 = new clouds(150, 100);
cloud3 = new clouds(-35, 175);
landscape = new grass();

sparkle = new stars();
sparkle2 = new stars();
sparkle3 = new stars();
sparkle4 = new stars();
sparkle5 = new stars();
sparkle6 = new stars();
sparkle7 = new stars();
sparkle8 = new stars();
sparkle9 = new stars();
sparkle10 = new stars();

solar = new dCelestialBodies();
}

void draw(){
/*fill(r, g, b);
noStroke();
rect(0, 0, 800, 350);*/
dawn.sky();
dawn.colorDay();

cloud1.draw();
cloud1.drift();
cloud1.colorDayCloud();
cloud1.colorNightCloud();

cloud2.draw();
cloud2.drift();
cloud2.colorDayCloud();
cloud2.colorNightCloud();

cloud3.draw();
cloud3.drift();
cloud3.colorDayCloud();
cloud3.colorNightCloud();

landscape.draw();
landscape.colorDayGrass();
landscape.colorNightGrass();

sparkle.draw();
sparkle2.draw();
sparkle3.draw();
sparkle4.draw();
sparkle5.draw();
sparkle6.draw();
sparkle7.draw();
sparkle8.draw();
sparkle9.draw();
sparkle10.draw();
sparkle.colorDayStars();
sparkle2.colorDayStars();
sparkle3.colorDayStars();
sparkle4.colorDayStars();
sparkle5.colorDayStars();
sparkle6.colorDayStars();
sparkle7.colorDayStars();
sparkle8.colorDayStars();
sparkle9.colorDayStars();
sparkle10.colorDayStars();

solar.draw();
solar.colorSun();
solar.colorMoon();

dawn.colorNight();
}

void mouseClicked(){
fill(255);
textSize(20);
text("PAUSED", 380, 280);
textSize(13);
text("Please click 'Run' again if you want to continue.", 270, 300);
noLoop();}