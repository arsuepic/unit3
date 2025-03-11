//Aaron Su
//Programming 11
//2-4

// Start variables declaration ====================================================================================

  // Colour palette
    color white        = #FFFFFF;
    color black        = #000000;
    color UILightGrey  = #C8C8C8;
    color UIMediumGrey = #7D7D7D;
    color UIDarkGrey   = #323232;
    color red          = #FF0000;
    color orange       = #FFA500;
    color yellow       = #FFFF00;
    color green        = #00FF00;
    color blue         = #0000FF;

  color selectedColour;
  float thickness = 5;
  
  //Toggles
    boolean toggleRed = true;
    boolean toggleOrange = false;
    boolean toggleYellow = false;
    boolean toggleGreen = false;
    boolean toggleBlue = false;
    boolean toggleWhite = false;
    boolean toggleBlack = false;

// End variables declaration ======================================================================================

void button(color colour, int w, int h, int x, int y, boolean currentToggle) { //Start tectile =====================================================
  
  strokeWeight(3);
  if (mouseX > x && mouseX < (x+w) && mouseY > y && mouseY < (y+h)) {
    stroke(white);
  } else {
    stroke(UIMediumGrey);
  }
  fill(colour);
  rect(x,y,w,h);
  
  if (currentToggle == true) {
    noStroke();
    fill(UILightGrey);
    ellipse(x+25,y+75,20,20);
  }

} //End tectile ===================================================================================================

void setup() { // Start setup =====================================================================================

  size(1000,800);
  background(white);

  selectedColour = red;

} // End setup ====================================================================================================

void draw() { // Start draw =======================================================================================

  //UI setup
    noStroke();
    fill(UIDarkGrey);
    rect(0,0,1000,150);
    
    button(red,50,100,30,25,toggleRed);
    button(orange,50,100,105,25,toggleOrange);
    button(yellow,50,100,180,25,toggleYellow);
    button(green,50,100,255,25,toggleGreen);
    button(blue,50,100,330,25,toggleBlue);
    button(white,50,100,405,25,toggleWhite);
    button(black,50,100,480,25,toggleBlack);
    
} // End draw =====================================================================================================

void toggleReset() { // Start toggleReset =========================================================================

  toggleRed = false;
  toggleOrange = false;
  toggleYellow = false;
  toggleGreen = false;
  toggleBlue = false;
  toggleWhite = false;
  toggleBlack = false;

} // End toggleReset ==============================================================================================

void mouseReleased() { // Start mouseReleased =====================================================================

  //Red Button
    if (mouseX > 30 && mouseX < 80 && mouseY > 25 && mouseY < 125 ) {
      toggleReset();
      toggleRed = true;
      selectedColour = red;
    }
    
  //Orange Button
    if (mouseX > 105 && mouseX < 155 && mouseY > 25 && mouseY < 125 ) {
      toggleReset();
      toggleOrange = true;
      selectedColour = orange;
    }

  //Yellow Button
    if (mouseX > 180 && mouseX < 230 && mouseY > 25 && mouseY < 125 ) {
      toggleReset();
      toggleYellow = true;
      selectedColour = yellow;
    }
    
  //Green Button
    if (mouseX > 255 && mouseX < 305 && mouseY > 25 && mouseY < 125 ) {
      toggleReset();
      toggleGreen = true;
      selectedColour = green;
    }
    
  //Blue Button
    if (mouseX > 330 && mouseX < 380 && mouseY > 25 && mouseY < 125 ) {
      toggleReset();
      toggleBlue = true;
      selectedColour = blue;
    }
    
  //White Button
    if (mouseX > 405 && mouseX < 455 && mouseY > 25 && mouseY < 125 ) {
      toggleReset();
      toggleWhite = true;
      selectedColour = white;
    }
    
  //Black Button
    if (mouseX > 480 && mouseX < 530 && mouseY > 25 && mouseY < 125 ) {
      toggleReset();
      toggleBlack = true;
      selectedColour = black;
    }

} // End mouseDragged =============================================================================================

void mouseDragged() {
  
  if (mouseY > 150) {
    stroke(selectedColour);
    strokeWeight(thickness);
    line(pmouseX,pmouseY,mouseX,mouseY);
  }

} // End mouseDragged =============================================================================================
