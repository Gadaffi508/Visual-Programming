void setup()
{
 noStroke();
 size(800,800);
 background(255);
 fill(0);
 PVector a = new PVector(width/2,50);
 PVector b = new PVector(50,height - 50);
 PVector c = new PVector(width - 50, height - 50);
 
 beginShape();
 vertex(a.x,a.y);
 vertex(b.x,b.y);
 vertex(c.x,c.y);
 endShape(CLOSE);
 
 üçgen(a,b,c);
}

void üçgen(PVector a, PVector b, PVector c)
{
  fill(255);
  PVector ab = orta(a,b);
  PVector ac = orta(a,c);
  PVector bc = orta(b,c);
 beginShape();
 vertex(ab.x,ab.y);
 vertex(ac.x,ac.y);
 vertex(bc.x,bc.y);
 endShape(CLOSE);
 
 float u = dist(ab.x,ab.y,ac.x,ac.y);
 if(u > 5)
 {
   üçgen(a,ab,ac);
 }
 
}

PVector orta(PVector n1, PVector n2)
{
  PVector o = new PVector((n1.x + n2.x)/2,(n1.y + n2.y)/2);
  return o;
}
