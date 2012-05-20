int x;
int y;
void setup(){
  size(400,300); // Solo accesible desde el setup = Da el tamaño de pantall
  //background(255); // backgraound de un solo parametro, Establece el color de fondo
  //background(200,245,80); //background de RGB
  //noFill();// sin relleno
  //noStroke();//sin borde
  fill(255,0,0,100);//RGB+Alpha
  stroke(200,200,0);
  strokeWeight(5);
  x=-500;
  y=-500;
}

void draw (){
  //background(200,245,30); //background de RGB
  //x=x+1;
  //fill(x,0,0);//cambiamos color
  x=mouseX;
  y=mouseY;
  rect(x,y,40,40);   
}

