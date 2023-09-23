int startX=0;
int startY=150;
int endX=0;
int endY=150;
  int x=0;
  int y=100;
void setup(){
  size(1000,1000);
  background(250,250,250);
}
void draw(){
    
    endX=startX + (int)(Math.random()*10);
    endY=startY +(int)(Math.random()*19)-9;
    startX= startX+(int) Math.random()*5;
    startY= startY+(int) Math.random()*5;
    strokeWeight(1);
    while (x<y)
      x+=1;
      phrog(startX-100,startY);
      //line(startX,startY,endX,endY);
      startX=endX;
      startY=endY;
  
//phrog(startX,startY);

}


void phrog(int x, int y){
  fill(204, 255, 204);
  if (Math.random()<.5)
    fill(((int) Math.random())/2,225,((int)Math.random())/4);
  strokeWeight(0);
  ellipse(x+200, y+200, 180, 150); //body
  ellipse(x+200 - 45, y+200 - 55, 50,50); //left eye socket
  ellipse(x+200 + 45, y+200 - 55, 50,50); //right eye socket
  fill(252, 255, 221); //belly
  ellipse(x+200, y+220, 110,110);
  fill(204, 255, 204);
  if (Math.random()<.5)
    fill(((int) Math.random())/4,225,((int)Math.random())/4);
  strokeWeight(.5);
  arc(x+200 - 35, y+200 + 70, 30, 40, -20, 200, OPEN); //legs
  arc(x+200 + 35, y+200 + 70, 30, 40, -20, 200, OPEN);
  noFill();
  strokeWeight(.5);
  fill(204, 255, 204);//legs
  if (Math.random()<.5)
    fill(((int) Math.random())/4,225,((int)Math.random())/4);
  arc(x+165, y+200, 30, 40, -20, 200, OPEN);//left arm
  arc(x+235, y+200, 30, 40, -20, 200, OPEN); //right arm
  fill(0, 0, 0);
  ellipse(x+200 - 47, y+200 - 60, 20,20); //left pulpil
  ellipse(x+200 + 47, y+200 - 60, 20,20); //right pulpil

}


