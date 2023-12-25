void setup()
{
 size(800,800); 
 background(255);
}

void draw()
{
  translate(width/2,height/2);
  beginShape();
  for(float i = 0; i < TWO_PI; i += TWO_PI/100)
  {
    float x = 16 * sin(i)* sin(i)* sin(i);
    float y = 13*cos(i)-5 *cos(2*i)- 2 *cos(3*i)-cos(4*i);
    fill(255,0,0);
    vertex(10*x,-10*y);
  }
  endShape(CLOSE);
  fill(255);
  textSize(50);
  text("Eda",-40,30);
}
