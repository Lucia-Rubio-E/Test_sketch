class Linea{
 PVector posArriba,posAbajo;
 float tamano;
 
 Linea(){
   
   tamano=50;
   posArriba=new PVector(width/2,height/2);
   posAbajo=new PVector(posArriba.x, posArriba.y + tamano);
 }
 
 public void Render(){
   line(posArriba.x,posArriba.y,posAbajo.x,posAbajo.y);
 }
  
}
