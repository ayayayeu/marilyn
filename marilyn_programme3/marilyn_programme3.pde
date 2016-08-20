/*********************************************************************
 POSTMODERN WARHOL
 
 KENO WESTHOFF
 
 „THE ALOGRITHMIC DIMENSION IN ART“
 PROF. DR. FRIEDER NAKE
 UNIVERSITÄT BREMEN
 2016
 
 –– THE MISTAKING COMPUTER #3 ––
 THIS PROGRAMME MODULATES TWO SINUSES IN ORDER TO 
 CALCULATE THE POSITION OF THE IMAGE ON THE CANVAS 
 ON THE X-AXIS.
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

    // SAVES A SCREENSHOT OF THE CANVAS
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

  // CALCULATE POSITION OF THE IMAGE ON THE X-AXIS
  xPos = xPos - i + xPos * sin(i) * sin(xPos);

  // CALCULATE POSITION OF THE IMAGE ON THE Y-AXIS
  yPos = yPos + i + yPos * sin(yPos);

  // INCREMENT I
  i = i+1;

  // RESETTING I
  if (i > 10)
  {
    i = 0;
  }
}