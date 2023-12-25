float b = 0.01;

void setup()
{
  //println(f(5));
  size(800,800);
}

void draw()
{
  background(255);
  dal(width/2,height,150,270);
  if(b<1)
  {
    b += 0.01f;
  }
}

void dal(float x, float y, float boy, float açı)
{
  stroke(60,200,10);
  if(boy>15)
  {
    stroke(140,74,3);
  }
  strokeWeight(boy/10);
  float a = PI/180 * açı;
  float uçx = x + cos(a) * boy;
  float uçy = y + sin(a) * boy;
  line(x,y,uçx,uçy);
  
  if(boy>5)
  {
    float oran = 0.6;
    float a1 = 15;
    float a2 = 25;
    dal(uçx,uçy,boy * oran * b,açı + a1);//right
    dal(uçx,uçy,boy * 0.83 * b,açı);//midlle
    dal(uçx,uçy,boy * oran * b,açı - a2);//left
  }
}

/*int f(int n)
{
  int sonuc = 2;
  
  if(n>2)
  {
    sonuc = n * f(n-1);
  }
  return sonuc;
}*/
