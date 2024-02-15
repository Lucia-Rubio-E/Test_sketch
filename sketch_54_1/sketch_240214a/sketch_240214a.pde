Punto p1;
Punto p2;
Punto p3;
Punto p4;

Cuadrado c;
Cuadrado c2;
Matriz m;

void setup(){

   size(1000,1000);
 
   p1=new Punto(width/2,height/2); // width ancho pantalla píxeles  / height largo pantalla píxeles
   p2=new Punto(p1.GetX()+20, p1.GetY());
   p3=new Punto(p1.GetX()+20, p1.GetY()+20);
   p4=new Punto(p1.GetX(), p1.GetY()+20);
   
   c2=new Cuadrado(p1,p2,p3,p4);
   c2.Render();
   
   
   
   m=new Matriz(-40,-40); // lo que se mueva el cuadrado 
   
   m.setPosActual(p1.GetX(),p1.GetY()); // que m sea el punto 
   p1.SetX(m.Trasladar()[0]); //trasladar en x
   p1.SetY(m.Trasladar()[1]); //trasladar en y
   
   m.setPosActual(p2.GetX(),p2.GetY()); // que m sea el punto 
   p2.SetX(m.Trasladar()[0]); //trasladar en x
   p2.SetY(m.Trasladar()[1]); //trasladar en y
   
   m.setPosActual(p3.GetX(),p3.GetY()); // que m sea el punto 
   p3.SetX(m.Trasladar()[0]); //trasladar en x
   p3.SetY(m.Trasladar()[1]); //trasladar en y
   
   m.setPosActual(p4.GetX(),p4.GetY()); // que m sea el punto 
   p4.SetX(m.Trasladar()[0]); //trasladar en x
   p4.SetY(m.Trasladar()[1]); //trasladar en y
   
   
   c=new Cuadrado(p1,p2,p3,p4);
   c.Render();
   
 
}
