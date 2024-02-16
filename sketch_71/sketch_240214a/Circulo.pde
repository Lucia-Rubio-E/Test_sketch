class Circulo{
 PVector pos;
 PVector vel;
 float d; //diametro
 
 Circulo(){
   d=50;
  pos = new PVector(width/2, height/2); 
  vel = new PVector(8,4);
 }
 
 public void Render(){
  ellipse(pos.x,pos.y,d,d); 
   
 }
 
 public void Mover(){
  pos=pos.add(vel); 
 }
 
 public void VerificarSiGolpea(){
  if(pos.y>height-(d/2)){
    vel.y=vel.y * -1;
  }
  
  if(pos.y<0+(d/2)){
    vel.y=vel.y * -1;
  }
  
  if(pos.x>width-(d/2)){
    vel.x=vel.x * -1;
  }
  
  if(pos.x<0+(d/2)){
    vel.x=vel.x * -1;
  }
  
 }
   
  
  
}
