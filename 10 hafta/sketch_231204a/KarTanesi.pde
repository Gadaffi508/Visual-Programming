class KarTanesi
{
   float x,y,hız;
   boolean yerdemi = false;
   
   KarTanesi()
   {
    x = random(width); 
    y = 0;
    hız = random(2,5);
   }
   
   void Çiz()
   {
      fill(255);
      stroke(255);
      strokeWeight(5);
      line(x-30,y,x+30,y);
      line(x-25,y-25,x+25,y+25);
      line(x+20,y-25,x-20,y+25);
   }
   
   void Yağ()
   {
      y += hız;  
      x += random(-2,2);
   }
   
   void yer()
   {
    if(y>height)
    {
       y=height;
       yerdemi =true;
    }
    
    
   }
   
   void temas(KarTanesi diğer)
   {
     float mesafe = dist(x,y,diğer.x,diğer.y);
     if(mesafe<60 && yerdemi == true)
     {
      hız = 0; 
     }
   }
}
