class Gota{
 PVector posArriba,posAbajo;
 float tamano;
 PVector vel;
 
 Gota(){
   
   tamano=random(10,100);
   posArriba=new PVector(random(0,width), -200);   
   posAbajo=new PVector(posArriba.x, posArriba.y + tamano);
   
   vel=new PVector(0,random(1,10));
 }
 
 public void Render(){
   line(posArriba.x,posArriba.y,posAbajo.x,posAbajo.y);
 }
 
 public void Mover(){
   posArriba = posArriba.add(vel);
   posAbajo = posAbajo.add(vel);
 }
 
 public void DevolverGota(){
   if(posArriba.y > height +20){
    posArriba.y=-30;
    posAbajo.y=-30+tamano;
    
   }
 }
  
}
