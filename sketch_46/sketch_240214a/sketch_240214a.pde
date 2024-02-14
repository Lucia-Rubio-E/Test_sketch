Punto p1;
Punto p2;

Linea l1;

void setup(){
 size(300,500);
 
 p1=new Punto(width/2,height/2); // width ancho pantalla píxeles  / height largo pantalla píxeles
 p2=new Punto(p1.GetX()+20, p1.GetY()+30);
 l1=new Linea(p1,p2);
 
 p1.Render();
 l1.Render();

}
