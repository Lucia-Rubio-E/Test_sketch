Punto p1;
Punto p2;
Punto p3;
Punto p4;

Linea l1;
Linea l2;
Linea l3;
Linea l4;

Cuadrado c1;

void setup(){
  
 size(200,200);
 
 p1=new Punto(width/2,height/2); // width ancho pantalla píxeles  / height largo pantalla píxeles
 p2=new Punto(p1.GetX()+20, p1.GetY());
 p3=new Punto(p1.GetX()+20, p1.GetY()+20);
 p4=new Punto(p1.GetX(), p1.GetY()+20);
 
 l1=new Linea(p1,p2);
 l2=new Linea(p2,p3);
 l3=new Linea(p3,p4);
 l4=new Linea(p4,p1);

 c1=new Cuadrado(p1,p2,p3,p4);
 c1.Render();
 
}
