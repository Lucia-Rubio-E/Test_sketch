Cuadrado c;
Cuadrado c2;
Matriz m;

ArrayList<Punto> listaPuntos=new ArrayList<Punto>();

float r=0;


void setup() {  // setup() runs once
  size(200, 200);
  frameRate(30);
}

void draw(){
  
   for(int i=0;i<=4;i++){
     Punto p;
     p=new Punto();
     listaPuntos.add(p);
   }
 
   Punto p1= listaPuntos.get(0);
   Punto p2= listaPuntos.get(1);
   Punto p3= listaPuntos.get(2);
   Punto p4= listaPuntos.get(3);
   p1.SetPos(0,0);
   p2.SetPos(p1.GetX()+20, p1.GetY());
   p3.SetPos(p1.GetX()+20, p1.GetY()+20);
   p4.SetPos(p1.GetX(), p1.GetY()+20);
   
   m=new Matriz(100,100,2,2,r); // lo que se mueva el cuadrado 
   
   for(int i=0;i<=4;i++){
     Punto p=listaPuntos.get(i); // definimos punto p con cada punto del array
     m.setPosActual(p.GetX(),p.GetY());   // que m sea el punto
     
     p.SetX(m.Escalar()[0]); //escalar en x
     p.SetY(m.Escalar()[1]); //escalar en y
   }
   
      for(int i=0;i<=4;i++){
     Punto p=listaPuntos.get(i); // definimos punto p con cada punto del array
     m.setPosActual(p.GetX(),p.GetY());   // que m sea el punto
     
     p.SetX(m.Rotar()[0]); //trasladar en x
     p.SetY(m.Rotar()[1]); //trasladar en y
   }
   
   for(int i=0;i<=4;i++){
     Punto p=listaPuntos.get(i); // definimos punto p con cada punto del array
     m.setPosActual(p.GetX(),p.GetY());   // que m sea el punto
     
     p.SetX(m.Trasladar()[0]); //trasladar en x
     p.SetY(m.Trasladar()[1]); //trasladar en y
   }
   
   c=new Cuadrado(p1,p2,p3,p4);
   c.Render();
   
   r=r+0.1;
  
}
