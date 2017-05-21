// Lesson 4 continues the basics from Lesson 1,2,3
// 1. Make an object
// 2. Use input changes color
// 3. User input is verified to be inside the object boundaries while,object is moving
// 4. A sound is played if clicked inside object

import ddf.minim.*;

int xCoord = 20;
int yCoord = 20;
boolean changeColor = false; 
Minim minim;
AudioSample flute1;

void setup() {
 size(250,250); 
 minim = new Minim(this);
 flute1 = minim.loadSample("flute a4.mp3", 512);
}

void draw() {
  if (changeColor == true){
    fill(0,0,255); 
  }
   else {
    fill(0,255,0); 
   }
  background(0);
  rect(xCoord, yCoord,50,50);
  
   if(xCoord < 250){
      xCoord++;
   }
   else {
     xCoord = -50;
   }
     
}

void mouseClicked() {
  if(mouseX >= xCoord && mouseX < (xCoord + 50) && mouseY > yCoord && mouseY < 70) {
      if(changeColor == true) {
      changeColor = false;
    }
      else {
       changeColor = true;  
      }
      flute1.trigger();
  }
 
}