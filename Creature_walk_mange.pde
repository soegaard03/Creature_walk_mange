PShape larve;
float s = 25;
int ballX = 0, ballY = 0;
int speedX = 1, speedY = 1;
float zoomFaktor = 1.01;


void setup(){
  size(600,600);
  
}

void draw(){
  clear();
  background(0, 43, 128); 
  
  s = s * zoomFaktor;
  float larvewalk = sin(ballX*0.5)*10;
  
  ballX += speedX;
  ballY += speedY + larvewalk;
  
  if (s> 200) { 
    zoomFaktor = 0.9;
    speedX = 0;
    speedY = 0;
    
  }
 larve = createShape(GROUP);
  for (int j=0; j<10; ++j) {
    float y = random(ballY + j*s + j);
    for (int i=0; i<10; ++i) {
      float x = random(ballX + i*s + i);
      float d = (int)random(-3, 3);
      Larve(x+d, y+d, s);
    }
  }
  
 shape(larve); 
 
  }
  
  void Larve(float x, float y, float rad){
    
//larvekrop
  fill(0,179,89);
 PShape larvedel1 = createShape(ELLIPSE,x, y + rad ,rad, rad +(rad*0.5));
 PShape larvedel2 = createShape(ELLIPSE,x+10, y + rad ,rad, rad +(rad*0.5));
 PShape larvedel3 = createShape(ELLIPSE,x+20, y + rad ,rad, rad +(rad*0.5));
 PShape larvedel4 = createShape(ELLIPSE,x+30, y + rad ,rad, rad +(rad*0.5));
 PShape larvedel5 = createShape(ELLIPSE,x+40, y + rad ,rad, rad +(rad*0.5));
 PShape larvedel6 = createShape(ELLIPSE,x+50, y + rad ,rad, rad +(rad*0.5));
 
 //sæt alle kropsdelene sammen til en figur
 larve.addChild(larvedel1);
 larve.addChild(larvedel2);
 larve.addChild(larvedel3);
 larve.addChild(larvedel4);
 larve.addChild(larvedel5);
 larve.addChild(larvedel6);
  }
