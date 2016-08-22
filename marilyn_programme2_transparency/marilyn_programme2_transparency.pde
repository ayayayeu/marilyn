/*********************************************************************
POSTMODERN WARHOL

KENO WESTHOFF

„THE ALOGRITHMIC DIMENSION IN ART“
PROF. DR. FRIEDER NAKE
UNIVERSITÄT BREMEN
2016

 DISTORTS AN IMAGE BY STRETCHING, REPOSITIONING, REDUCING OPACITY 
 AND COMPRESSING IT.
*********************************************************************/

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
  /*background(255,255,255);
  stroke(0);
  line(20,50, 200, 500);*/
  
  image(m, 0, 0);
  
  save("capture.jpg");
  delay(1000);
  notDrawn = false;
  }
 
  
  photo = loadImage("capture.jpg");
  image(photo, xPos, yPos, xPos+i, yPos+i);
  tint(255, 126);
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
}