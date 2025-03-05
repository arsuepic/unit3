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

color selectedColor;

int toggleDarkBlue;
int toggleCream;
int toggleLightRed;

//End ariables setup ========================================================



void tectile(int x1,int x2, int y1, int y2) { //Start tectile ===============
  if (mouseX > x1 && mouseX < x2 && mouseY > y1 && mouseY < y2) {
    stroke(white);
  } else {
    stroke(darkRed);
  }
} //End tectile =============================================================



void light(int toggle, int x,int y) { //Start light =========================
  if (toggle > 0) {
    noStroke();
    fill(white);
    ellipse(x,y,20,20);
  }
} //End light ===============================================================



void setup() { //Start setup ================================================

  size(500,500);
  background(lightBlue);
  
  selectedColor = darkBlue;
  
  toggleDarkBlue = 1;
  toggleCream    = -1;
  toggleLightRed = -1;

} //End setup ================================================================



void draw() { //Start draw ===================================================

  strokeWeight(5);

  //Indicator
    stroke(darkRed);
    fill(selectedColor);
    rect(100,50,300,300);

  //Dark Blue button
    tectile(70,130,375,475);
    fill(darkBlue);
    rect(70,375,60,100);
    light(toggleDarkBlue,100,400);
  
  //Cream button
    tectile(220,280,375,475);
    fill(cream);
    rect(220,375,60,100);
    light(toggleCream,250,400);

    
  //Light Red button
    tectile(370,430,375,475);
    fill(lightRed);
    rect(370,375,60,100); 
    light(toggleLightRed,400,400);

} //End draw =================================================================



void mouseReleased() { // Start mouseReleased ================================

  //Dark Blue button
    if (mouseX > 70 && mouseX < 130 && mouseY > 375 && mouseY < 475) {
      selectedColor = darkBlue;
      toggleDarkBlue = 1;
      toggleCream = -1;
      toggleLightRed = -1;
    }

  //Cream button
    if (mouseX > 220 && mouseX < 280 && mouseY > 375 && mouseY < 475) {
      selectedColor = cream;
      toggleDarkBlue = -1;
      toggleCream = 1;
      toggleLightRed = -1;
    }

  //Light Red button
    if (mouseX > 370 && mouseX < 430 && mouseY > 375 && mouseY < 475) {
      selectedColor = lightRed;
      toggleDarkBlue = -1;
      toggleCream = -1;
      toggleLightRed = 1;      
    }

} // End mouseReleased =======================================================
