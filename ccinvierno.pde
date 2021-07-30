// https://youtu.be/yXM17reIntU (Link a vídeo en YouTube)

//Aylen Zegarra - Legajo 85129/1

PFont fuente; // font matura

PImage imagen1, imagen2, imagen3, imagen4, imagen5; // imagenes

float aa; // animacion de imagenes

float py; //animacion textos

int equis = 355; //posicion rect
int ey = 265;

int ancho = 30; //ancho y alto del rect
int alto = 30;

void setup () {

  size (400, 300);

  fuente = loadFont ("MaturaMTScriptCapitals-48.vlw");
  textFont(fuente);

  imagen1 = loadImage ("imagen1.jpg");
  imagen2 = loadImage ("imagen2.jpg");
  imagen3 = loadImage ("imagen3.jpg");
  imagen4 = loadImage ("imagen4.jpg");
  imagen5 = loadImage ("imagen5.jpg");

  aa = -350.0; 

  py = -200;
}

void draw () {

  background (0);

  //!!!!!!!!!!!!!IMAGENES!!!!!!!!!!!!!
  image (imagen1, 0, aa);
  image (imagen2, 0, aa-300);
  image (imagen3, 0, aa-600);
  image (imagen4, 0, aa-900);
  image (imagen5, 0, aa-1200);

  aa++;

  // !!!!!!!TEXTOS!!!!!!!!!!
  fill (255, 205, 0);
  textAlign (CENTER);
  textSize (45);
  text ("Alí Baba", 180, py);
  textSize(30);
  textAlign(CENTER);
  text ("y los cuarenta ladrones", 200, py+40);
  text ("Con Alí Baba", 180, py-200);
  text ("Los cuarenta ladrones", 200, py-700);
  text ("El líder de los ladrones", 210, py-1000);
  text ("La esposa de Alí Baba", 200, py-1300);
  textSize (20);
  text ("Click en la R para ver de nuevo",200,py-1500);

  py++;

  //!!!!CIRCULOS RANDOM!!!!

  float randomX = random(0, 400);
  float randomY = random(0, 300);
  float randomY2 = random(0, 300);

  fill (255, 205, 0);
  noStroke();
  ellipse (randomX, 5, 5, 5);
  ellipse (5, randomY, 5, 5);
  ellipse (395, randomY2, 5, 5);

  // !!!!!!!!!!!BOTON RESET!!!!!!!!!!!!!

  fill (255, 0, 0);
  rect (equis, ey, ancho, alto);
  fill(0);
  textAlign(CENTER);
  textSize(20);
  text ("R", 370, 285);
}

//!!!!CLICK DEL BOTON!!!!!!

void mouseClicked() {

  if (mouseX > equis && mouseX < equis + ancho && mouseY > ey && mouseY < ey + alto) {
    aa = -350.0; 
    py = -200;
  }
}
