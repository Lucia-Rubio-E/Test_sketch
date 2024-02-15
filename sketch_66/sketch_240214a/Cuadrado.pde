class Cuadrado{
  
  Linea l1;
  Linea l2;
  Linea l3;
  Linea l4;
  
  Punto p1;
  Punto p2;
  Punto p3;
  Punto p4;

  Cuadrado(Punto _p1, Punto _p2, Punto _p3, Punto _p4){
    p1=_p1;
    p2=_p2;
    p3=_p3;
    p4=_p4;
    GenerarLineas();
  }
  
  void GenerarLineas(){
     l1=new Linea(p1,p2);
     l2=new Linea(p2,p3);
     l3=new Linea(p3,p4);
     l4=new Linea(p4,p1);
  }
  
 void Render(){
   l1.Render();
   l2.Render();
   l3.Render();
   l4.Render();  
  }
 
}
