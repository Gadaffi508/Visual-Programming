void setup()
{
 size(800,800); 
}

void draw()
{
  background(255);
  translate(width/2,height/2);
  Saat(200);
  
}

void Saat(float boyut)
{
  float h = boyut;

  fill(255);
  ellipse(0,0,h*2,h*2);
  
  for(int i= 1; i<=12; i++)
  {
    PVector n = nokta(i*30,h);
    fill(0);
    ellipse(n.x,n.y,10,10);
    n = nokta(i*30,h*1.1);
    textSize(h/10);
    textAlign(CENTER,CENTER);
    text(i,n.x,n.y);
  }
  
  Kol((hour() + minute()/60.0) * 30,0.6,h);
  Kol(minute() * 6,0.8,h);
  Kol(second() * 6,0.9,h);
}

void Kol(float açı,float kat,float h)
{
  strokeWeight((1-kat) * 10);
  PVector b = nokta(açı,h* kat);
  line(0,0,b.x,b.y);
}

PVector nokta(float açı,float uzaklık)
{
  float a = iletki(açı-90);
  float x = cos(a) * uzaklık;
  float y = sin(a) * uzaklık;
  return new PVector(x,y);
}

float iletki(float açı)
{
  return PI/180 * açı; 
}
