int x = 0;

void setup()
{
 size(800,600); 
}

void draw()
{
  background(100);
  
  x = 0;
  
  while (x < width)
  {
   x += 1; 
   if(mouseX > 0)
   {
     x += mouseX; 
   }
   ellipse(x,height / 2,50,50);
  }
}
