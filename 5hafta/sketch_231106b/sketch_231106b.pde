void setup()
{
  size(800,800);
}

void draw()
{
  background(200);
  Smile(200,200,150,150); 
 
}

void Smile(float x, float y,float w,float h)
{
  stroke(0);
  fill(255,255,0);
  
  ellipse(x,y,w,h);
  
  fill(0);
  ellipse(x-(w/4),y-(h/5),w/10,h/5);  
  ellipse(x+(w/4),y-(h/5),w/10,h/5);
  fill(255);
  ellipse(x-(w/5),y-(h/5),w/11,h/6);  
  ellipse(x+(w/5),y-(h/5),w/11,h/6);
  
  fill(255);
  
  ellipse(x,y+(h/8),w*0.6,h/10);
  
  delay(300);
}
