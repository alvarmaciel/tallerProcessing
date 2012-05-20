//declaramos variables:
int c;
boolean sube;
boolean activo;

void setup() {
  size(800, 450);
  smooth(); // suaviza los bordes

  //inicializamos variables
  c=0;
  sube=true; //usamos esta variable para la rampa de colores del dibujo
  activo=false; 
  
  background(100, 100, 40);
  noStroke(); //Sin Linea en el borde
}


void draw() {
  fill(c, 255-c, 150, 200); // OK no entiendo esto, llena con 4 parametros 0 0-255. Pero qué es lo que llena?
  
  if (activo==true) {
    ellipse(mouseX, mouseY, 25, 25);
  }

  if (sube==true) {
    c++;
  }
  else {
    c--;
  }

  if (c>255 || c<0) {
    sube=!sube;
  }
}

void keyPressed() { // Si apreto espacio reescribo el background, osea borro lo que hice
  if (key==' ') {
    background(100, 100, 40);
  }
}

void mousePressed() { // Si apreto el Mouse la variable "activo" pasa a true y en el drow se dibuja la elipse
  activo=true;
}
void mouseReleased() { // Si suelto el Mouse la variable "activo" pasa a false y se deja de dibujar la elipse
  activo=false;
}

