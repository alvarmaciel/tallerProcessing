//declaramos variables:
boolean activo;

void setup() {
  size(800, 450);
  activo=false;
  background (184,184,184);
}
 


void draw() {
  if (activo==true && mouseButton == LEFT) { //Cuando aprieto el botón izquierdo dibujo un circulo negro con bordes blancos
    fill(0);
    stroke(255);
    ellipse(mouseX, mouseY, 80, 80);
  }
  
  if (activo==true && mouseButton==RIGHT) { //Cuando aprieto el botón derecho dibujo un circulo blanco con bordes negros
    fill(255);
    stroke (0);
    ellipse(mouseX, mouseY, 80, 80);
}
}

void keyPressed() { 
  if (key==' ') { // Si apreto espacio reescribo el background, osea borro lo que hice
    background(184,184,184); 
  }
  if (key=='s' || key=='S'){ // Si apreto s o S grabo el dibujo 
    saveFrame("ejemplo-####.png");
  }
}

void mousePressed() { // Si apreto el Mouse la variable "activo" pasa a true y en el drow se dibuja la elipse
  activo=true;
}
void mouseReleased() { // Si suelto el Mouse la variable "activo" pasa a false y se deja de dibujar la elipse
  activo=false;
}

