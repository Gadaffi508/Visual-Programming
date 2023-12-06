KarTanesi[] karlar = new KarTanesi[50];

void setup()
{
  size(800,800);
  for(int i=0; i<karlar.length;i++)
  {
     karlar[i] = new KarTanesi(); 
  }

}

void draw()
{
  background(50);
    for(int i=0; i<karlar.length;i++)
  {
     karlar[i].Yağ(); 
     karlar[i].Çiz(); 
     karlar[i].yer(); 
     karlar[i].temas(karlar[i]); 
  }
}
