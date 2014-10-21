
// This gif copycat was made by Suzi and Raphaël
// at the Berlin Creative Code Jam on October 18th 2014.

// This is an improved version made after seeing the original.

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

// If you post your results online, please give credit 
// to the creator of the original.

// The copycat game was created at Creative Code Berlin
// and first played on September 20th 2014


PGraphics pg;

int circleAmount = 10;
int diameter = 279;

float radius = 0.0;
float maxRadius = 75.0;

float animationSpeed = 0.1;

int sleepFrames = 120;
int counter = 0;


void setup() {
  size(500,500);
  //frameRate(6);
}

void draw() {
  
  background(230,227,204);
  
  pg = createGraphics(width,height);
  
  pg.beginDraw();
  pg.blendMode(MULTIPLY);
  pg.noStroke();
  pg.fill(210,50);
  
  pg.translate(width/2,height/2);

  // Animation
  radius = (sin(frameCount*animationSpeed)+1.0)/2.0*maxRadius;

  for(int i=0; i<circleAmount; i++) {
    float theta = TWO_PI/circleAmount*i;
    float xPos = radius*cos(theta);
    float yPos = radius*sin(theta);
    pg.ellipse(xPos, yPos, diameter, diameter);
  }

  pg.endDraw();
  
  image(pg, 0, 0);
  
  // Apply the orange color
  tint(255,76,18);
  
}
