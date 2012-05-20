//Iniciación de variables
boolean activo; // define el click del boton
int relleno; // color de rrelleno
boolean v; // define vertical
boolean h; // define horizontal
int grosor;
void setup () {
  size (800,450);
  background (255);
  activo=false;
  grosor=1;
}

void draw() {
  if (h==true) {
    stroke(0);
    rect(mouseX,mouseY,800,grosor);
    grosor++;
  }
  
}

void keyPressed() { 
  if (key==' ') { // Si apreto espacio reescribo el background, osea borro lo que hice
    background(184,184,184); 
  }
  if (key=='s' || key=='S'){ // Si apreto s o S grabo el dibujo 
    saveFrame("ejemplo-####.png");
  }
  
  if (key=='v'|| key=='V') {
    v=true;
  }
  
  if (key=='h'|| key=='H') {
    h=true;
  }

}

void mousePressed() { // Si apreto el Mouse la variable "activo" pasa a true y en el drow se dibuja la elipse
  activo=true;
}
void mouseReleased() { // Si suelto el Mouse la variable "activo" pasa a false y se deja de dibujar la elipse
  activo=false;
}


