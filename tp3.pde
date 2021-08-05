// https://youtu.be/ucKehqkbu28

int y_1, y_2; //variables de y de las lineas
int x1, y1, x2, y2, x3, y3, x4, y4;
int x11, y11, x22, y22, x33, y33, x44, y44;
int espacioX;

void setup () {
  size (400, 300);
  y_1 = -15;
  y_2 = 500;

  // horizontales
  x1 = 5;
  y1 = 20;
  x2 = 80;
  y2 = 30;
  x3 = 75;
  y3 = 40;
  x4 = 10;
  y4 = 20;

  espacioX = 100;

  // verticales
  x11=85;
  y11=40;
  x22=115;
  y22=20;
  x33=115;
  y33=25;
  x44=85;
  y44=45;
}

void draw () {
  background (255);

  translate (-115, 180);
  rotate (radians(-50));

  //CICLO FOR!!! :')

  //lineas

  for (int a = 0; a < 10; a++) {
    strokeWeight (10);
    line (a * 50, y_1, a * 50, y_2);
  }

  //filas de quads

  for (int c = 0; c < 10; c++) {
    for (int b = 0; b < 10; b++) { 
      fill(0);
      quad (x1 + c * espacioX, (b * 50) - y1, x2 + c * espacioX, (b * 50) - y2, x3 + c * espacioX, (b * 50) - y3, x4+ c * espacioX, (b * 50) - y4);
      //quad (x11 + c * espacioX, (b * 50) + y11, x22 + c * espacioX, (b * 50) + y22, x33 + c * espacioX, (b * 50) + y33, x44 + c * espacioX, (b * 50) + y44);
    }
  }
}

//void mouseMoved (){
//x11 = round (map (mouseX,0, width,0,width));
//}

void keyPressed () {
  if (keyCode == LEFT) { 
    x11 = 85;
  }
}
