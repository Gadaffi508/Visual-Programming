float sayaçL,sayaçM = 0;

void setup()
{
  size(800,600);
  rectMode(CENTER);
  rect(width/2,height/2,700,200);
}

void draw()
{
  sayaçL += 10;
  sayaçM += 10;
  
  line((sayaçL * 10),200,(sayaçL * 10),300);
  
  line((sayaçM * 10) + 50,200,(sayaçM * 10) + 50,250);
  
  fill(0);
  text(sayaçL/10,(sayaçL * 10),300);
  text((sayaçL/10) + 0.5f,(sayaçM * 10) + 50,250);
  
}
