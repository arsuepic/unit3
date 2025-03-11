//Aaron Su
//Programming 11
//2-4

PImage tea;
boolean teaOn;

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
  float thickness;
  float sliderX = 750;
  
  //Toggles
    boolean toggleRed = true;
    boolean toggleOrange = false;
    boolean toggleYellow = false;
    boolean toggleGreen = false;
    boolean toggleBlue = false;
    boolean toggleWhite = false;
    boolean toggleBlack = false;
    boolean toggleClear = false;
    boolean toggleTea = false;

// End variables declaration ======================================================================================

void button(color colour, int w, int h, int x, int y, boolean currentToggle) { //Start tectile ====================
  
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

void controlSlider() { // Start controlSlider =====================================================================
  
  if (mouseX < 900 && mouseX > 600 && mouseY < 100 && mouseY > 50) {
    sliderX = mouseX;
  }
  
} // Start controlSlider ==========================================================================================

void setup() { // Start setup =====================================================================================

  size(1400,800);
  background(white);

  selectedColour = red;
  tea = loadImage("tea.png");


} // End setup ====================================================================================================

void draw() { // Start draw =======================================================================================

  thickness = map(sliderX,600,900,1,20);

  //UI setup
    noStroke();
    fill(UIDarkGrey);
    rect(0,0,1400,150);
    
    
    //Tea button
      if (toggleTea == true) {
        stroke(red);
        strokeWeight(6);
      } else {
        noStroke();
      }
      
      if (dist(1250,75,mouseX,mouseY) < 50) {
        
        fill(yellow);
        
      } else {
        
        fill(white);
        
      }
      circle(1250,75,100);
      image(tea,1177,-8,150,150);
    
    
    //Clear Button
      strokeWeight(3);
      if (mouseX > 1020 && mouseX < 1120 && mouseY > 50 && mouseY < 100) {
        stroke(white);
      } else {
        stroke(UIMediumGrey);
      }
      fill(UIMediumGrey);
      rect(1020,50,100,50);
      fill(white);
      textSize(30);
      text("CLEAR",1030,85);
    
    //Buttons
      button(red,50,100,30,25,toggleRed);
      button(orange,50,100,105,25,toggleOrange);
      button(yellow,50,100,180,25,toggleYellow);
      button(green,50,100,255,25,toggleGreen);
      button(blue,50,100,330,25,toggleBlue);
      button(white,50,100,405,25,toggleWhite);
      button(black,50,100,480,25,toggleBlack);
    
    //Slider
    
      if (mouseX < 900 && mouseX > 600 && mouseY < 100 && mouseY > 50) {
      
        stroke(UILightGrey);
        fill(UIMediumGrey);

      } else {
        
        stroke(UIMediumGrey);
        fill(UILightGrey);

      }
      
      strokeWeight(10);
      line(600,75,900,75);
      
      strokeWeight(5);
      circle(sliderX, 75, 30);
      
    //Stroke weight indicator
      stroke(selectedColour);
      fill(UIDarkGrey);
      strokeWeight(thickness);
      circle(950,75,30);
      
      if (toggleTea == true) {
        image(tea,(950-(thickness*6)),(75-(thickness*6.5)),thickness*12,thickness*12);
      }

} // End draw =====================================================================================================

void toggleReset() { // Start toggleReset =========================================================================

  toggleRed = false;
  toggleOrange = false;
  toggleYellow = false;
  toggleGreen = false;
  toggleBlue = false;
  toggleWhite = false;
  toggleBlack = false;
  toggleTea = false;

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
    
  //Clear Button
  if (mouseX > 1020 && mouseX < 1120 && mouseY > 50 && mouseY < 100) {
    
    noStroke();
    fill(white);
    rect(0,150,1400,800);
    
  }
  
  //Tea Button
    if (dist(1250,75,mouseX,mouseY) < 50) {
      toggleReset();
      toggleTea = true;
      selectedColour = UIDarkGrey;
    }
  

} // End mouseReleased ============================================================================================

void mouseDragged() { // Start mouseDragged =======================================================================
  
  if (mouseY > 150) {
    
    if (toggleTea == false) {
      
    stroke(selectedColour);
    strokeWeight(thickness);
    line(pmouseX,pmouseY,mouseX,mouseY);
    
    } else {
    
      image(tea,(mouseX-(thickness*6)),(mouseY-(thickness*6.5)),thickness*12,thickness*12);
      
    }
    
  }
  
  controlSlider();

} // End mouseDragged =============================================================================================

void mousePressed() { // Start mousePressed =======================================================================

  controlSlider();

} // End mousePressed =============================================================================================
