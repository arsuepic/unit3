//Aaron Su
//Mar. 4th
//2-4


//Start ariables setup ======================================================

color lightBlue = #669bbc;
color darkBlue  = #003049;
color cream     = #fdf0d5;
color lightRed  = #c1121f;
color darkRed   = #780000;
color white     = #FFFFFF;

float sliderX;
float shade;

//End ariables setup ========================================================



void setup() { //Start setup ================================================

  size(500,500);
  
  sliderX = 250;
  shade = 0;
  
} //End setup ================================================================



void draw() { //Start draw ===================================================

  shade = map(sliderX,50,450,0,255);

  background(shade);
  
  //Slider's line
    strokeWeight(10);
    stroke(lightBlue);
    line(50,250,450,250);
    
  //Slider's button
    strokeWeight(5);
    stroke(darkBlue);
    fill(cream);
    circle(sliderX, 250, 50);

} //End draw =================================================================



void mouseDragged() { // Start mouseDragged ==================================

  controlSlider();


} // End mouseDragged =========================================================



void mousePressed() { // Start mousePressed ===================================

  controlSlider();

} // End mousePressed =========================================================



void controlSlider() { // Start controlSlider =================================
  
  if (mouseX < 450 && mouseX > 50 && mouseY < 285 && mouseY > 215) {
    sliderX = mouseX;
  }
  
} // Start controlSlider =======================================================
