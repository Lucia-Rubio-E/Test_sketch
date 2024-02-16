void setup(){
 size(500,500);
 
}

float r=0;

void draw(){
  
  background(255);
  
  translate(width/2,height/2);
  rotate(r);
  rect(-26,-26,52,52);
  r++;


}
