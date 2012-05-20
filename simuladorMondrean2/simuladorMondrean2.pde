//Iniciación de variables
boolean activo; // define el click del boton
int relleno; // color de rrelleno
boolean v; // define vertical
boolean h; // define horizontal
boolean eje;
int grosor;

void setup () {
  size (800,450);
  background (255);
  activo=false;
  grosor=1;
  h=false;
  v=false;
  eje=false;
}

void draw() {
  if (activo==true && eje==true) {
    fill(0);
    rectMode(CENTER);
    rect(mouseX,mouseY,8000,grosor);
    fill(0);
    rectMode(CENTER);
    rect(mouseX,mouseY,grosor,8000);
    grosor++;
  }
    else { 
    grosor=1;
    eje=false;
    }
  if (activo==true && h==true){
    fill(0);
    rectMode(CENTER);
    rect(mouseX,mouseY,grosor,8000);
    grosor++;
    }
    else { 
      grosor=1;
//      h=false;
    }
  if (activo==true && v==true){
    fill(0);
    rectMode(CENTER);
    rect(mouseX,mouseY,8000,grosor);
    grosor++;
    }
/*    else { 
    grosor=1;
//    v=false;
    }*/
   
  }
  
void keyPressed() { 
  if (key==' ') { // Si apreto espacio reescribo el background, osea borro lo que hice
    background(255); 
  }
  if (key=='s' || key=='S'){ // Si apreto s o S grabo el dibujo 
    saveFrame("ejemplo-####.png");
  }
  
  if (key=='v'|| key=='V') {
    v=true;
/*    if (activo==true && v==true) {
      fill(0);
      rectMode(CENTER);
      rect(mouseX,mouseY,8000,grosor);
      grosor++;
    }
    else { 
    grosor=1;
    }*/
  }
  
  if (key=='h'|| key=='H') {
    h=true;
/*  if (activo==true && h==true) {
      fill(0);
      rectMode(CENTER);
      rect(mouseX,mouseY,grosor,8000);
      grosor++;
     }
     else { 
      grosor=1;
     }*/
  }
  
  if (key=='e'|| key=='E') {
    eje=true;
  }
}

void mousePressed() { // Si apreto el Mouse la variable "activo" pasa a true y en el drow se dibuja la elipse
  activo=true;
}
void mouseReleased() { // Si suelto el Mouse la variable "activo" pasa a false y se deja de dibujar la elipse
  activo=false;
  eje=false;
  h=false;
  v=false;
}


