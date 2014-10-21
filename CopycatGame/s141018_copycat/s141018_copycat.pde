
// This gif copycat was made by Suzi and Raphaël
// at the Berlin Creative Code Jam on October 18th 2014.

// Based on the original by Dave Whyte (Bees&Bombs):
// http://beesandbombs.tumblr.com/post/99577746089/flower


// THE COPYCAT GAME
// Version 1.0

// The copycat game is a creative coding exercice in which 
// two teams of two coders try to reproduce existing 
// animations based solely on the oral description given 
// by the other team. Each team picks a different gif and  
// has 5 minutes to describe it. The other team has 5 minutes 
// for questions. Each team then has 1 hour to code what
// they think is the best possible copy of the original.

// The copycat game was created at Creative Code Berlin
// and first played on September 20th 2014


PGraphics pg;

int circleAmount = 10;
int diameter = 400;

float radius = 0.0;
float maxRadius = 100.0;

float animationSpeed = 0.03;

void setup() {
  size(600,600);
  //frameRate(6);
}

void draw() {
  
  background(245,240,222);
  
  pg = createGraphics(width,height);
  
  pg.beginDraw();
  pg.blendMode(MULTIPLY);
  pg.noStroke();
  pg.fill(255,155,0);
  
  pg.translate(width/2,height/2);

  radius = sin(frameCount*animationSpeed) * maxRadius;
  
  float rotation = 0;//frameCount*0.01;

  for(int i=0; i<circleAmount; i++) {
    float theta = TWO_PI/circleAmount*i + rotation;
    float xPos = radius*cos(theta);
    float yPos = radius*sin(theta);
    pg.ellipse(xPos, yPos, diameter, diameter);
  }

  pg.endDraw();
  
  image(pg, 0, 0);
  
}
