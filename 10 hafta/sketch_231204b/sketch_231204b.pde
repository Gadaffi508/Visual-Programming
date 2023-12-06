Baloncuk b1,b2;

void setup()
{
  size(800,800);

}

void draw()
{
    background(50);
    b1 = new Baloncuk(mouseX,mouseY);
    b2 = new Baloncuk(400,400);
    
    b1.temas(b2);
    
    
    
    //b.Yağ();
    b1.Çiz();
    b2.Çiz();
    //b.yer();
}
