class Cuadrado{
  
  Linea l1;
  Linea l2;
  Linea l3;
  Linea l4;
  
  Cuadrado(Linea _l1, Linea _l2, Linea _l3, Linea _l4){
    l1=_l1;
    l2=_l2;
    l3=_l3;
    l4=_l4;
  }
  
 void Render(){
  l1.Render();
  l2.Render();
  l3.Render();
  l4.Render();
  }
 

}
