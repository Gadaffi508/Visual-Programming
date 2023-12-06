int top_X;
int direction = 1;
float speed;
void setup()
{
  size(800, 800); 
  top_X = 0;
  speed = 3f;
}

void draw()
{
  background(100);
  stroke(0);
  fill(200);
  
  if(mouseX > 400)
  {
   background(255,0,0); 
  }
  else if(mouseX > 200)
  {
    background(0,0,255);
  }
  
  println("Hızımız : " + speed);
 
  //speed = random(.5f,3);
  top_X += 5 * direction * speed;
  
  ellipse(top_X, height / 2, 100, 100);
  
  if (top_X >= width - 50) {
    top_X = width - 50;
    direction *= -1;
  } else if (top_X <= 50) {
    top_X = 50;
    direction *= -1;
  }
  
}
