//Lesson 3 builds on Lesson 1 and 2
// 1. Create an object 
// 2. Make the color change when it is clicked
// 3. Make the object move
// 4. Additionally check if the user clicked inside the 
// the object before the color is changed
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
  if(mouseX >= xCoord && mouseX < (xCoord + 50)) {
      if(changeColor == true) {
      changeColor = false;
    }
      else {
       changeColor = true;  
      }
  }
 
}