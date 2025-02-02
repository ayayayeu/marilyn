/*********************************************************************
 POSTMODERN WARHOL
 
 KENO WESTHOFF
 
 „THE ALOGRITHMIC DIMENSION IN ART“
 PROF. DR. FRIEDER NAKE
 UNIVERSITÄT BREMEN
 2016
 
 –– THE MISTAKING COMPUTER #2 / TINT ––
 DISTORTS AN IMAGE BY STRETCHING, REPOSITIONING, TINTING 
 AND COMPRESSING IT.
 *********************************************************************/

// VARIABLES
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
  image(photo, xPos, yPos, xPos+i, yPos+i);

  // TINTING THE NEW SCREENSHOT
  tint(c, opacity);

  // SAVING THE NEW DISTORTED SCREENSHOT
  save("capture.jpg");

  // WAITING A BIT IN ORDER TO SAVE THE FILE PROPERLY
  delay(50);

  // CALCULATING THE POSITION OF THE IMAGE
  xPos = pow(i, 2);
  yPos = pow(i, 2);

// RESETTING THE POSITION OF THE IMAGE
  if (xPos > 500)
  {
    xPos = 0;
    yPos = 0;
  }

  // INCREMENTING I
  i = i+1;
  
  // CALCULATING THE OPACITY
  opacity = opacity - i/div;
}