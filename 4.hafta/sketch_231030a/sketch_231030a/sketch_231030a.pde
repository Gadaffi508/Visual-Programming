int adet;
float ölçü;
void setup()
{
 size(800,800); 
 adet = 4;
 ölçü = width/adet;
}

void draw()
{
  background(200);
  stroke(0);
  fill(255);
  
  
   for(int y = 0; y < adet; y += 1)
    {
    for(int x = 0; x < adet; x += 1)
      {
        fill(0);
        if((x + y) % 2 == 0)
        {
          fill(255);
        }
        rect(x * ölçü,y * ölçü,ölçü,ölçü);
      }    
    } 
  
  
}
