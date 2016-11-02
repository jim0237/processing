void setup(){
size(500,500);
}

void draw() {
//line(10,80,30,40);  //line(x1, y1, x2, y2) or line(x1, y1, z1, x2, y2, z2)
//line(20,80,40,40); //move the x coord. of line start and finish over by 10 pixels
//line(30,80,50,40); //again
//line(40,80,60,40); //again
drawDiagnalLines(10,90);
}

void drawDiagnalLines(int startX, int startY) {
  line(startX, startY, startX + 20, startY - 40);
  line(startX+10,startY,startX+30,startY - 40);
}