class Punto{
 int x;
 int y;
 
 Punto(int _x, int _y){
  x=_x;
  y=_y;
 }
 
 
  Punto(){
  x=0;
  y=0;
  }
  
  
  void SetPos(int _x, int _y){
   x=_x;
   y=_y;
  }
 
 int GetX(){
  return x; 
 }
 
  int GetY(){
  return y; 
 }
 
  void SetX(int _x){
   x=_x; 
  }
  
  void SetY(int _y){
   y=_y; 
  }
  
  void Render(){
   point(x,y); 
  }

}
