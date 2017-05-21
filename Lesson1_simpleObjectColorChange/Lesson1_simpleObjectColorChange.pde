// Lesson 1 demonstrates:
// 1. How to create simple object on the canvas at a specific location
// 2. how to respond to simple user input..in this case the use clicks the mouse
//


int xCoord = 20;
int yCoord = 20;
boolean changeColor = false; 
 
void setup() {
 size(250,250); 
}

void draw() {
  if (changeColor == true){
    fill(0,0,255); 
  }
   else {
    fill(0,255,0); 
   }
  rect(xCoord, yCoord,50,50);
  
}

void mouseClicked() {
  if(changeColor == true) {
    changeColor = false;
  }
  else {
   changeColor = true;  
  }
}