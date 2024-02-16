Circulo c;

void setup(){
 size(500,500);
 c=new Circulo();
  
}


void draw(){
 background(0,100,100);
 c.Render();
 c.Mover();
 c.VerificarSiGolpea();
}
