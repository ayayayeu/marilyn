/*********************************************************
 POSTMODERN WARHOL
 
 KENO WESTHOFF
 
 „THE ALOGRITHMIC DIMENSION IN ART“
 PROF. DR. FRIEDER NAKE
 UNIVERSITÄT BREMEN
 2016
 
DISTORTS AN IMAGE BY STRETCHING AND COMPRESSING IT.
*********************************************************/

// VARIABLES
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
  // HAS ANYTHING BEEN DRAWN YET?
  if (notDrawn)
  {
    // DRAWING THE ORIGINAL IMAGE
    image(m, 0, 0);
    // SAVES A SCREENSHOT OF THE CANVAS
    save("capture.jpg");
    // WAITING A BIT IN ORDER TO SAVE THE FILE PROPERLY
    delay(1000);
    // SOMETHING IS DRAWN NOW
    notDrawn = false;
  }

  // LOADS RECENT SCREENSHOT
  photo = loadImage("capture.jpg");
  // DRAWING THE DISTORTED SCREENSHOT
  image(photo, xPos, yPos, xPos+i, yPos+i); 
  // SAVING THE NEW DISTORTED SCREENSHOT
  save("capture.jpg");
  // WAITING A BIT IN ORDER TO SAVE THE FIL PROPERLY
  delay(50);

  xPos = pow(i, 2);
  yPos = pow(i, 2);

  if (xPos > 500)
  {
    xPos = 0;
    yPos = 0;
  }

  // INCREASING I BY ONE
  i = i+1;
}