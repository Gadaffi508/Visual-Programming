float boxX = 120,boxY = 300;
float increaseX = 2,increaseY = 1;

void setup()
{
 size(800,800); 
}

void draw()
{
  //background(50);
  
  noStroke();
  rectMode(CENTER);
  rect(boxX,boxY,100,100);
  
  boxX += increaseX;
  boxY += increaseY;
  
  if(boxX > width - 50 || boxX < 50)
  {
   increaseX *= -1; 
   fill(random(255),random(255),random(255));
  }
  
  if(boxY > height - 50 || boxY < 50)
  {
    increaseY *= -1;
    fill(random(255),random(255),random(255));
  }
}
