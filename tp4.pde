//https://youtu.be/g6JjDcUgki0

String [] lineas;
PImage [] imagenes;
PFont font, font1;
int estado;
int posX, posY, posX2, posY2, posX3, posY3;
int alto, ancho, alto2, ancho2;
int xx, yy;

void setup () {
  size (400, 300);
  lineas = loadStrings ("texto.txt");
  imagenes = new PImage [31];
  for (int i = 0; i < 31; i++) {
    imagenes [i] = loadImage (i + ".jpg");
  }
  font = loadFont ("MaturaMTScriptCapitals-48.vlw");
  font1 = loadFont ("Candara-48.vlw");

  estado = 0;
  posX=20;
  posY=250;
  posX2=230;
  posY2=250;

  ancho=150;
  alto=30;
  ancho2=40;
  alto2=40;

  // CREDITOS
  imagen1 = loadImage ("imagen1.jpg");
  imagen2 = loadImage ("imagen2.jpg");
  imagen3 = loadImage ("imagen3.jpg");
  imagen4 = loadImage ("imagen4.jpg");
  imagen5 = loadImage ("imagen5.jpg");

  aa = -350; 
  py = -200;

  xx=15;
  yy = 25;
}

void draw () {
  background (200);
  if (estado == 0) {
    image (imagenes[0], 0, 0);
    fill (255);
    rect (posX, posY, ancho, alto);
    rect (posX2, posY2, ancho, alto);
    fill (255, 177, 0);
    textFont (font, 36);
    text (lineas[0], 100, 100);
    text (lineas [1], 50, 150);
    textSize (20);
    text (lineas [2], posX+30, 270);
    text (lineas [3], posX2+30, 270);
  } else if (estado == 1) {
    image (imagenes[1], 0, 0);
    fill (0);
    rect (0, 0, 400, 50);
    textFont (font1, 14);
    fill (255);
    text (lineas[4], 80, 20);
    text (lineas[5], 80, 40);
    image (imagenes[30], 300, 220);
  } else if (estado == 2) {
    //pantalla creditos
    dibujosYAnimacion ();
    fill (255, 0, 0);
    ellipse (xx, yy, 20, 20);
    fill (255);
    rect (posX2, posY2, alto2, ancho2);
    fill (255, 177, 0);
    textFont (font, 18);
    text (lineas[78], 230, 280);
  } else if (estado == 3) {
    image (imagenes[2], 0, 0);
    fill (0);
    rect (0, 0, 400, 50);
    textFont (font1, 14);
    fill (255);
    text (lineas[6], 40, 20);
    text (lineas[7], 40, 40);
    image (imagenes[30], 300, 220);
  } else if (estado == 4) {
    image (imagenes[3], 0, 0);
    image (imagenes[30], 300, 220);
    fill (0);
    rect (0, 0, 400, 70);
    fill (255);
    textFont (font1, 14);
    text (lineas[8], 20, 20);
    text (lineas[9], 20, 40);
    text (lineas[10], 20, 60);
  } else if (estado == 5) {
    image (imagenes[4], 0, 50);
    fill (0);
    rect (0, 0, 400, 70);
    fill (255);
    textFont (font1, 14);
    text (lineas[11], 10, 20);
    text (lineas[12], 10, 40);
    text (lineas[13], 10, 60);
    fill (255);
    rect (posX-10, posY, ancho+10, alto+10);
    rect (posX2-10, posY2, ancho+10, alto+10);
    fill (0);
    text (lineas[14], posX2, 270);
    text (lineas[15], posX2+50, 285);
    text (lineas[16], posX+5, 270);
  } else if (estado == 6) {
    image (imagenes[27], 0, 0);
    fill (0);
    rect (0, 0, 400, 50);
    fill (255);
    rect (posX, posY, ancho, alto);
    rect (posX2, posY2, ancho, alto);
    text (lineas[17], 10, 20);
    text (lineas[18], 10, 40);
    fill (0);
    textFont (font1, 14);
    text (lineas[19], 40, 270);
    text (lineas[20], 250, 270);
  } else if (estado == 7) {
    image (imagenes[6], 0, 60);
    fill (0);
    rect (0, 0, 400, 60);
    image (imagenes[30], 300, 220);
    fill (255);
    text (lineas[21], 10, 20);
    text (lineas[22], 10, 40);
    text (lineas[23], 10, 60);
  } else if (estado == 8) {
    image (imagenes[28], 0, 0);
    fill (0);
    rect (0, 0, 400, 50);
    fill (255);
    rect (posX2, posY2, alto2, ancho2);//BOTON VOLVER A INICIO
    textFont (font1, 14);
    text (lineas[24], 10, 20);
    text (lineas[25], 10, 40);
    fill (255, 177, 0);
    textFont (font, 20);
    text (lineas[78], 235, 275);//FIN NEUTRO
  } else if (estado == 9) {
    image (imagenes[10], 0, 0);
    fill (0);
    rect (0, 0, 400, 60);
    fill (255);
    image (imagenes[30], 300, 220);
    text (lineas[26], 10, 20);
    text (lineas[27], 10, 40);
    text (lineas[28], 10, 60);
  } else if (estado == 10) {
    image (imagenes[29], 0, 50);
    fill (0);
    rect (0, 0, 400, 60);
    fill (255);
    rect (posX2, posY2, ancho2, alto2);//BOTON VOLVER A INICIO
    textFont (font1, 14);
    text (lineas[29], 10, 20);
    text (lineas[30], 10, 40);
    text (lineas[31], 10, 60); //FIN TRISTE
    fill (255, 177, 0);
    textFont (font, 20);
    text (lineas[78], 235, 275);
  } else if (estado == 11) {
    image (imagenes[7], 0, 0);
    fill (0);
    rect (0, 0, 400, 50);
    fill (255);
    image (imagenes[30], 300, 220);
    text (lineas[32], 10, 20);
    text (lineas[33], 10, 40);
  } else if (estado == 12) {
    image (imagenes[8], 0, 0);
    fill (0);
    rect (0, 0, 400, 70);
    fill (255);
    image (imagenes[30], 300, 220);
    text (lineas[34], 10, 20);
    text (lineas[35], 10, 40);
    text (lineas[36], 10, 60);
  } else if (estado == 13) {
    image (imagenes[10], 0, 0);
    fill (0);
    rect (0, 0, 400, 80);
    fill (255);
    text (lineas[37], 10, 20);
    text (lineas[38], 10, 40);
    text (lineas[39], 10, 60);
    text (lineas[40], 10, 80);
    rect (posX, posY, ancho, alto);
    rect (posX2, posY2, ancho, alto);
    fill (0);
    text (lineas[41], 230, 270);
    text (lineas[42], 30, 270);
  } else if (estado == 14) {
    image (imagenes[11], 0, 0);
    fill (0);
    rect (0, 0, 400, 70);
    fill (255);
    image (imagenes[30], 300, 220);
    text (lineas[43], 10, 20);
    text (lineas[44], 10, 40);
    text (lineas[45], 10, 60);
  } else if (estado == 15) {
    image (imagenes[23], -5, 0);
    fill (0);
    rect (0, 0, 400, 50);
    fill (255);
    image (imagenes[30], 300, 220);
    text (lineas[46], 10, 20);
    text (lineas[47], 10, 40);
  } else if (estado == 16) {
    image (imagenes[13], 0, 30);
    fill (0);
    rect (0, 0, 400, 60);
    fill (255);
    image (imagenes[30], 300, 220);
    text (lineas[48], 10, 20);
    text (lineas[49], 10, 40);
    text (lineas[50], 10, 60);
  } else if (estado == 17) {
    image (imagenes[14], 0, 0);
    fill (0);
    rect (0, 0, 400, 50);
    fill (255);
    image (imagenes[30], 300, 220);
    text (lineas[51], 10, 20);
    text (lineas[52], 10, 40);
  } else if (estado == 18) {
    image (imagenes[16], 0, 0);
    fill (0);
    rect (0, 0, 400, 50);
    fill (255);
    image (imagenes[30], 300, 220);
    text (lineas[53], 10, 20);
    text (lineas[54], 10, 40);
  } else if (estado == 19) {
    image (imagenes[17], 0, 20);
    fill (0);
    rect (0, 0, 400, 60);
    fill (255);
    image (imagenes[30], 300, 220);
    text (lineas[55], 10, 20);
    text (lineas[56], 10, 40);
    text (lineas[57], 10, 60);
  } else if (estado == 20) {
    image (imagenes[19], 0, 0);
    fill (0);
    rect (0, 0, 400, 50);
    fill (255);
    image (imagenes[30], 300, 220);
    text (lineas[58], 10, 20);
    text (lineas[59], 10, 40);
  } else if (estado == 21) {
    image (imagenes[20], 0, 0);
    fill (0);
    rect (0, 0, 400, 60);
    fill (255);
    image (imagenes[30], 300, 220);
    text (lineas[60], 10, 20);
    text (lineas[61], 10, 40);
    text (lineas[62], 10, 60);
  } else if (estado == 22) {
    image (imagenes[21], -15, 0);
    fill (0);
    rect (0, 0, 400, 60);
    fill (255);
    image (imagenes[30], 300, 220);
    text (lineas[63], 10, 20);
    text (lineas[64], 10, 40);
    text (lineas[65], 10, 60);
  } else if (estado == 23) {
    image (imagenes[22], 0, 0);
    fill (0);
    rect (0, 0, 400, 50);
    fill (255);
    rect (posX2, posY2, ancho2, alto2); //BOTON VOLVER A INICIO
    textFont (font1, 14);
    text (lineas[66], 10, 20);
    text (lineas[67], 10, 40); //FIN FELIZ
    fill (255, 177, 0);
    textFont (font, 20);
    text (lineas[78], 235, 275);
  } else if (estado == 24) {
    image (imagenes[24], 0, 40);
    fill (0);
    rect (0, 0, 400, 80);
    fill (255);
    image (imagenes[30], 300, 220);
    text (lineas[68], 10, 20);
    text (lineas[69], 10, 40);
    text (lineas[70], 10, 60);
    text (lineas[71], 10, 80);
  } else if (estado == 25) {
    image (imagenes[25], 0, 0);
    fill (0);
    rect (0, 0, 400, 60);
    fill (255);
    image (imagenes[30], 300, 220);
    text (lineas[72], 10, 20);
    text (lineas[73], 10, 40);
    text (lineas[74], 10, 60);
  } else if (estado == 26) {
    image (imagenes[26], 0, 30);
    fill (0);
    rect (0, 0, 400, 60);
    fill (255);
    rect (posX2, posY2, ancho2, alto2); //BOTON VOLVER A INICIO
    textFont (font1, 14);
    text (lineas[75], 10, 20);
    text (lineas[76], 10, 40);
    text (lineas[77], 10, 60); //FIN MALO
    fill (255, 177, 0);
    textFont (font, 20);
    text (lineas[78], 235, 275);
  }
}

void mouseClicked() {
  if (estado == 0 && (mouseX > posX2 && mouseX < posX2 + ancho && mouseY > posY2 && mouseY < posY2 + alto)) {
    estado = 1;
  } else if (estado == 0 && (mouseX > posX && mouseX < posX + ancho && mouseY > posY && mouseY < posY + alto)) {
    estado = 2;
  } else if (estado == 2 && (mouseX > posX2 && mouseX < posX2 + ancho && mouseY > posY2 && mouseY < posY2 + alto)) {
    estado = 0;
  } else if (estado == 5 && (mouseX > posX && mouseX < posX + ancho && mouseY > posY && mouseY < posY + alto)) {
    estado = 6;
  } else if (estado == 5 && (mouseX > posX2 && mouseX < posX2 + ancho && mouseY > posY2 && mouseY < posY2 + alto)) {
    estado = 7;
  } else if (estado == 6 && (mouseX > posX && mouseX < posX + ancho && mouseY > posY && mouseY < posY + alto)) {
    estado = 8;
  } else if (estado == 6 && (mouseX > posX2 && mouseX < posX2 + ancho && mouseY > posY2 && mouseY < posY2 + alto)) {
    estado = 9;
  } else if (estado == 13 && (mouseX > posX && mouseX < posX + ancho && mouseY > posY && mouseY < posY + alto)) {
    estado = 14;
  } else if (estado == 13 && (mouseX > posX2 && mouseX < posX2 + ancho && mouseY > posY2 && mouseY < posY2 + alto)) {
    estado = 15;
  } else if (estado == 8  && (mouseX > posX2 && mouseX < posX2 + ancho2 && mouseY > posY2 && mouseY < posY2 + alto2)) {
    estado = 0;
  } else if (estado == 10  && (mouseX > posX2 && mouseX < posX2 + ancho2 && mouseY > posY2 && mouseY < posY2 + alto2)) {
    estado = 0;
  } else if (estado == 23  && (mouseX > posX2 && mouseX < posX2 + ancho2 && mouseY > posY2 && mouseY < posY2 + alto2)) {
    estado = 0;
  } else if (estado == 26  && (mouseX > posX2 && mouseX < posX2 + ancho2 && mouseY > posY2 && mouseY < posY2 + alto2)) {
    estado = 0;
  } 
  if (colisionSupCirc (mouseX, mouseY, xx, yy, 20)) {
    py= -200;
    aa = -350;
  }
}

void keyPressed () {

  if (estado == 1 && (keyCode == RIGHT)) {
    estado = 3;
  } else if (estado == 3 && (keyCode == RIGHT)) {
    estado = 4;
  } else if (estado == 4 && (keyCode == RIGHT)) {
    estado = 5;
  } else if (estado == 9 && (keyCode == RIGHT)) {
    estado = 10;
  } else if (estado == 7 && (keyCode == RIGHT)) {
    estado = 11;
  } else if (estado == 11 && (keyCode == RIGHT)) {
    estado = 12;
  } else if (estado == 12 && (keyCode == RIGHT)) {
    estado = 13;
  } else if (estado == 14 && (keyCode == RIGHT)) {
    estado = 16;
  } else if (estado == 16 && (keyCode == RIGHT)) {
    estado = 17;
  } else if (estado == 17 && (keyCode == RIGHT)) {
    estado = 18;
  } else if (estado == 18 && (keyCode == RIGHT)) {
    estado = 19;
  } else if (estado == 19 && (keyCode == RIGHT)) {
    estado = 20;
  } else if (estado == 20 && (keyCode == RIGHT)) {
    estado = 21;
  } else if (estado == 21 && (keyCode == RIGHT)) {
    estado = 22;
  } else if (estado == 22 && (keyCode == RIGHT)) {
    estado = 23;
  } else if (estado == 15 && (keyCode == RIGHT)) {
    estado = 24;
  } else if (estado == 24 && (keyCode == RIGHT)) {
    estado = 25;
  } else if (estado == 25 && (keyCode == RIGHT)) {
    estado = 26;
  }
}
