void setup()
{
 size(600,400); 
 noStroke();
}

void draw()
{
  background(50);
  fill(220,200);
  rectMode(CENTER);
  
  float k1 = map(mouseY,0,height,10,200);
  rect(mouseX,height/2,k1,k1);
  
  float k2 = map(mouseY,0,height,200,10);
  rect(width - mouseX,height/2,k2,k2);
}
