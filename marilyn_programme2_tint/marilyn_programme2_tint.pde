/*******************
POSTMODERN WARHOL

KENO WESTHOFF

„THE ALOGRITHMIC DIMENSION IN ART“
PROF. DR. FRIEDER NAKE
UNIVERSITÄT BREMEN
2016

Distorts an image by stretching and compressing it.
*******************/

boolean notDrawn = true;
PImage photo;
PImage m;
int i = 1;
float xPos;
float yPos;
float opacity = 25;
float div = 10000;
color c = color(120, 22, 76);

void setup()
{
  size(500, 500);
  m = loadImage("marilyn.jpg");
}


void draw()
{
  if(notDrawn)
  {
  
  image(m, 0, 0);
  
  save("capture.jpg");
  delay(1000);
  notDrawn = false;
  }
 
  
  photo = loadImage("capture.jpg");
  image(photo, xPos, yPos, xPos+i, yPos+i);
  tint(c, opacity);
  save("capture.jpg");
  delay(50);
  
  xPos = pow(i,2);
  yPos = pow(i,2);
  
  if (xPos > 500)
  {
    xPos = 0;
    yPos = 0;
  }
  
  println(yPos);
  
  i = i+1;
  opacity = opacity - i/div;
}