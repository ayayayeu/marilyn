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
  image(photo, xPos, yPos, height, width); 
  save("capture.jpg");
  delay(50);
  
  xPos = xPos - i + xPos * sin(i) * sin(xPos);
  yPos = yPos + i + yPos * sin(yPos);
  
  println(yPos);
  
  i = i+1;
  
  if(i>10)
  {
    i = 0;
  }
}