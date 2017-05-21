//Lesson 2 adds to Lesson 1
// 1. Create and object
// 2. Make it change colors when the use clicks
// 3. Additionally the object is now moving
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
  if(changeColor == true) {
    changeColor = false;
  }
  else {
   changeColor = true;  
  }
}