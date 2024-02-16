Gota g; //declarar variable Gota llamada g
ArrayList<Gota> Gotas= new ArrayList<Gota>(); // array de gotas

void setup(){
 size(500,500); //tamano ventana
 g=new Gota(); // variable g = gota
 
  for(int i=0; i<50;i++){
  Gota g = new Gota(); // variable g = gota
  Gotas.add(g); // añade al array gotas = la variable g
 }
}

void draw(){
  
  background(255);
  
  //for(int i=0;i<Gotas.size();i++){
  //  Gota g = Gotas.get(i); // pasa a var g = lo que haya en el vector Gotas en la pos i
  //  g.Render();
  //  g.Mover();
  //  g.DevolverGota();
  //}
  
  
    for(Gota g : Gotas){  // para cada gota (g) en el vector Gotas
      g.Render();
    g.Mover();
    g.DevolverGota();
    }
  
  
}
