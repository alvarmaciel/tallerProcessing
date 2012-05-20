int x;
int y;
boolean sube;
int col;
void setup (){
  //background(255, 204, 0);
  size(800,450);
  fill(255,0,0,100);
  noStroke();
  sube=true;
  //strokeWeight(3);   

}
void draw (){
  background(col);
  if(mousePressed) {
    smooth();
    ellipse(mouseX, mouseY, 50, 50);
  }
  if(sube==true){
   col++;
  }
  else{
   col--;
  }
  if(col>=255){
    sube=false;
  }
  if(col<=255){
    sube=true;
  }
}
//void KeyPressed(){
//  if (key=='s'){
//     saveFrame("dibujo.png");
//  }
//}
