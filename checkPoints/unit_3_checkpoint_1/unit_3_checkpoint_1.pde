//Aaron Su
//Mar. 4th
//2-4



//Start ariables setup ======================================

color lightBlue = #669bbc;
color darkBlue  = #003049;
color cream     = #fdf0d5;
color lightRed  = #c1121f;
color darkRed   = #780000;
color white     = #FFFFFF;

color selectedColor;

//End ariables setup ========================================



void tectile(int x,int y, int r) { //Start tectile ==========
  if (dist(x,y,mouseX,mouseY) < r) {
    stroke(white);
  } else {
    stroke(darkRed);
  }
} //End tectile =============================================



void setup() { //Start setup ================================

  size(500,500);
  background(lightBlue);
  
  selectedColor = darkBlue;
  
} //End setup ================================================



void draw() { //Start draw ===================================

  strokeWeight(5);

  //Indicator
    stroke(darkRed);
    fill(selectedColor);
    rect(100,50,300,300);

  //Dark Blue button
    tectile(100,425,50);
    fill(darkBlue);
    ellipse(100,425,100,100);  
  
  //Cream button
    tectile(250,425,50);
    fill(cream);
    ellipse(250,425,100,100);
    
  //Light Red button
    tectile(400,425,50);
    fill(lightRed);
    ellipse(400,425,100,100); 
  
} //End draw =================================================



void mouseReleased() { // Start mouseReleased ================

  //Dark Blue button
    if (dist(100,425,mouseX,mouseY) < 50) {
      selectedColor = darkBlue;
    }

  //Cream button
    if (dist(250,425,mouseX,mouseY) < 50) {
      selectedColor = cream;
    }

  //Light Red button
    if (dist(400,425,mouseX,mouseY) < 50) {
      selectedColor = lightRed;
    }

} // End mouseReleased =======================================
