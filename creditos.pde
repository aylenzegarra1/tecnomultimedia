PImage imagen1, imagen2, imagen3, imagen4, imagen5; // imagenes
float aa; // animacion de imagenes
float py; //animacion textos

void dibujosYAnimacion (){
  image (imagen1,0,aa);
  image (imagen2,0,aa-300);
  image (imagen3,0,aa-600);
  image (imagen4,0,aa-900);
  image (imagen5,0,aa-1200);
  
  fill (255,205,0);
  textSize (45);
  text ("Alí Baba",90,py);
  textSize(30);
  text ("y los cuarenta ladrones",60,py+40);
  text ("Con Alí Baba",90,py-200);
  text ("Los cuarenta ladrones",60,py-700);
  text ("El líder de los ladrones", 60,py-1000);
  text ("La esposa de Alí Baba",60,py-1300);
  aa++;
  py++;
 
}

boolean colisionSupCirc (float x, float y, float xSup, float ySup, float rSup){
  float distancia = dist (x,y,xSup,ySup);
  if (distancia < rSup){
    return true;
  } else {
    return false;
  }
  
}
