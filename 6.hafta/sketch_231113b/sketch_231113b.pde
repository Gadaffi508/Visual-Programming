float x = 0, y = 0, sayaç = 0;

void setup()
{
 size(800,800); 
}

void draw()
{
  x = sayaç % 8;
  y = floor(sayaç/8);
  
  fill(0);
  if((x+y)%2==0)
  {
    fill(255);
  }
  
 rect(x*100,y*100,100,100); 
 
 sayaç += 1;
}
