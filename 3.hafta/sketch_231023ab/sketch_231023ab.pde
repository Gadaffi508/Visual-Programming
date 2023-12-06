void setup(){
size(800,800);
}

void draw(){
  
  if(mouseX < 400 && mouseY < 400){
  background(mouseX,0,0);
  }else if(mouseX > 400 && mouseY < 400){
  background(0,mouseX - 400,0);
  }else if(mouseX < 400 && mouseY > 400){
  background(mouseX,mouseX,mouseX);
  }else if(mouseX > 400 && mouseY > 400){
  background(0,0,mouseX-400);
  }
  
}
