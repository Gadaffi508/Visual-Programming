void setup()
{
  size(800,800);
}

void draw()
{
  background(200);
  strokeWeight(5);
  stroke(255,255,0);
  //line(100,100,700,500);
  strokeWeight(1);
  stroke(0);
  //kesikli(100,100,700,500);
  //kesikli(100,100,700,100);
  //kesikli(700,500,700,100);
  
  küp(100,100,500,300,50);
  float ze = map(mouseX,0,width,0,100);
  küp(100,100,mouseX,mouseY,ze);
}

void küp(int x, int y, int w,int h,float z)
{
  noFill();
  rect(x,y,w,h);
  rect(x + z,y + z,w,h);
  
  line(x,y,x+z,y+z);//sol üst
  line(x+w,y,x+z+w,y+z);//sağ üst
  
  line(x,y+h,x+z,y+z+h); //sol alt
  line(x + w,y+h,x+w+z,y+z+h); //sağ alt
}

void kesikli(int x1, int y1,int x2,int y2)
{
  int parça = 10;
  float xFark = (x2-x1) / parça;
  float yFark = (y2-y1) / parça;
  
  for(int i = 0; i<parça; i+=1)
  {
    line(x1 + (i * xFark),y1 + (i*yFark),x1 + (i * xFark) + (xFark/2),y1 + (i*yFark) + (yFark/2));
  }
}
