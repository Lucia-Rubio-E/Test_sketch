class Linea{
 Punto P1;
 Punto P2;
 
 Linea(Punto _P1, Punto _P2){
   
   P1=_P1;
   P2=_P2;

 }
 
 void Render(){
  line(P1.GetX(),P1.GetY(),P2.GetX(),P2.GetY()); 
 }
 
}
