/*********************************************************************
 POSTMODERN WARHOL
 
 KENO WESTHOFF
 
 „THE ALOGRITHMIC DIMENSION IN ART“
 PROF. DR. FRIEDER NAKE
 UNIVERSITÄT BREMEN
 2016
 
 –– THE MISTAKING COMPUTER #4 ––
 Distorts an image by stretching and compressing it.
 *********************************************************************/

// VARIABLES
boolean notDrawn = true;
PImage photo;
PImage m;
int i = 1;
float xPos;
float yPos;

void setup()
{
  // CANVAS SIZE
  size(500, 500);

  // LOADING THE ORIGINAL IMAGE
  m = loadImage("marilyn.jpg");
}


void draw()
{
  // HAS ANYTHING BEEN DRAWN YET?
  if (notDrawn)
  {
    // DRAWING THE ORIGINAL IMAGE
    image(m, 0, 0);

    // SAVING A SCREENSHOT OF THE CANVAS
    save("capture.jpg");

    // WAITING A BIT IN ORDER TO SAVE THE FILE PROPERLY
    delay(1000);

    // SOMETHING HAS BEEN DRAWN NOW
    notDrawn = false;
  }

  // LOADS RECENT SCREENSHOT
  photo = loadImage("capture.jpg");

  // DRAWING THE DISTORTED SCREENSHOT
  image(photo, xPos, yPos, height, width); 

  // SAVING THE NEW DISTORTED SCREENSHOT
  save("capture.jpg");

  // WAITING A BIT IN ORDER TO SAVE THE FIL PROPERLY
  delay(50);
  
  // DEFINING THE POSITION OF THE IMAGE ON THE CANVAS
  xPos = i;
  yPos = yPos + sin(i);

  // INCREMENTING I
  i = i+1;
}