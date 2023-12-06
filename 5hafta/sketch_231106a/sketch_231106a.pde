float x=0,y=0;
float xh=8,yh=1;

void setup()
{
 size(800,500); 
}

void draw()
{
  background(200);
  ShowBall();
}

void ShowBall()
{
  stroke(50);
  fill(100);
  
  ellipse(x,y,50,50);
  
  BallMovement();
}

void BallMovement()
{
  x+=xh;
  y+=yh;
  
  BallControll();
}

void BallControll()
{
  if(x>width || x<0)
  {
   xh *= -1; 
  }
  
  if(y>height || y<0)
  {
   yh *= -1; 
  }
}
