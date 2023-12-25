float x = 0, y = 0;

void setup()
{
  size(800,800);
  background(255);
}

void draw()
{
  for(int i = 0; i<100; i++)
  {
  float zar = random(1);
  if(zar < 0.01f)
  {
    x = 0 * x;
    y = 0.16 * y;
  }else if(zar < 0.86f)
  {
    x = 0.85f * x  + 0.04f * y;
    y = -0.04 * x + 0.85f * y + 1.6f;
    
    
  }else if(zar < 0.93f)
  {
    x = 0.2f * x - 0.26 * y;
    y = 0.23 * x + 0.22f * y + 1.6f;
  }else
  {
    x = -0.15f * x + 0.28f * y;
    y = 0.26f * x + 0.24f * y + 0.44;
  }
  strokeWeight(3);
  stroke(100,255,100);
  float xn = map(x,-2.5f,3,0,width);
  float yn = map(y,0,11,height,0);
  point(xn,yn);
  }
  
}
