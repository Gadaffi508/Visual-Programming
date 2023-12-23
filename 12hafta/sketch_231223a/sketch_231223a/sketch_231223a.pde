void setup() {
  size(800, 800);
}

void draw() {
  background(255);
  //translate(width/2, height/2);
  rectMode(CENTER);
  
  yıldız(400,200, 80, 5);
}

void yıldız(float x, float y, float çap, int adet){
  float h=çap/2;
  fill(255,0,0);
  rect(x -50,y,300,200);
  
  fill(255);
  
  ellipse(x-100,y,167,167);
  
  fill(255,0,0);
  noStroke();
  ellipse(x-80,y,135,135);
  fill(255);
  beginShape();
  for (int i=1; i<=adet; i++) {
    float açı=360/adet;
    PVector n=nokta(i*açı,h);
    vertex(x+n.x, y+n.y);
    
    PVector m=nokta(i*açı+açı/2,h*0.4);
    vertex(x+m.x, y+m.y);
  }
  endShape(CLOSE);
  
  
  
}

PVector nokta(float açı, float uzaklık) {
  float a=iletki(açı-180);
  float x=cos(a)*uzaklık;
  float y=sin(a)*uzaklık;
  return new PVector(x, y);
}

float iletki(float açı) {
  return PI/180*açı;
}
