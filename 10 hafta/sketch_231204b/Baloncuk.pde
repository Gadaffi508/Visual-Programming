class Baloncuk
{
   float x,y,hız;
   
   Baloncuk()
   {
    x = random(width); 
    y = height;
    hız = random(2,5);
   }
   
   Baloncuk(float gelenX, float gelenY)
   {
    x = gelenX;
    y = gelenY;
   }
   
   void Çiz()
   {
      stroke(255);
      fill(200,100);
      ellipse(x,y,60,60);
   }
   
   void Yağ()
   {
      y -= hız;  
      x += random(-2,2);
   }
   
   void yer()
   {
    if(y<0)
    {
       y=0;
    }
   }
   
   void temas(Baloncuk diğer)
   {
     float mesafe = dist(x,y,diğer.x,diğer.y);
   }
}
