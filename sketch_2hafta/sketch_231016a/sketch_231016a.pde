void setup()
{
  size(800,800);
}

void draw()
{
  background((255 * mouseX)/width,(1 * mouseX)/width,(1 * mouseX)/width);
  ellipse(width-mouseX,mouseY,50,50);
  line(pmouseX,pmouseY,mouseX,mouseY);
}
