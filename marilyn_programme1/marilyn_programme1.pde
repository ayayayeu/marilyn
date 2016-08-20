/*********************************************************
 POSTMODERN WARHOL
 
 KENO WESTHOFF
 
 „THE ALOGRITHMIC DIMENSION IN ART“
 PROF. DR. FRIEDER NAKE
 UNIVERSITÄT BREMEN
 2016
 
 –– THE MISTAKING COMPUTER #1 ––
 DISTORTING AN IMAGE BY STRETCHING AND COMPRESSING IT.
 *********************************************************/

// VARIABLES
boolean notDrawn = true;
PImage photo;
PImage m;
int i = 1;

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
  image(photo, 0, 0, width+i, height-i); 

  // SAVING THE NEW DISTORTED SCREENSHOT
  save("capture.jpg");

  // WAITING A BIT IN ORDER TO SAVE THE FIL PROPERLY
  delay(250);

  // INVERTING THE VARIABLE I
  i = -i;
}