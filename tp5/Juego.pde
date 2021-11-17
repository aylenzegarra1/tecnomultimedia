class Juego {

  //Atributos
  int pantallaActual; //0 Inicio, 2 Juego, 2 Fin
  Pantalla pantallaInicio, pantallaFinM, pantallaFinD;
  int cantDiamantes;
  int cantMonedas;
  Personaje personaje;
  Moneda [] moneda;
  Diamante [] diamantes;
  int puntosM = 0;
  int puntosD = 0;
  PImage imagen;

  //Constructor
  Juego() {
    pantallaActual = 0;
    pantallaInicio = new Pantalla ("Hola!", "Elegí si juntar monedas o diamantes \n con el mouse\n", "Apreta Espacio para jugar");
    pantallaFinM = new Pantalla ("Juntaste más monedas", "Seguis por el camino humilde...", "Click para volver a inicio");
    pantallaFinD = new Pantalla ("Juntaste más diamantes", "Seguis por el camino de la ambición...", "Click para volver a inicio");
    cantMonedas = 150;
    cantDiamantes = 150;  
    personaje = new Personaje ();   
    moneda = new Moneda[cantMonedas];
    diamantes = new Diamante[cantDiamantes];
    imagen = loadImage ("ciudadArabe.jpg");


    for (int i = 0; i < cantMonedas; i++) {
      moneda[i] = new Moneda();
    }

    for (int i = 0; i < cantDiamantes; i++) {
      diamantes[i] = new Diamante();
    }
  }



  //Métodos
  void dibujar() {
    if ( this.pantallaActual == 0) { //---------------------------inicio
      pantallaInicio.dibujar();
    } else if (this.pantallaActual == 1) {  //----------------------------------juego
      image(imagen,0,0,width,height);
      personaje.dibujar();
      fill (0);
      textSize (18);
      text ("Monedas " + puntosM, 60, 50);
      text ("Diamantes " + puntosD, 60, 80);

      for (int i = 0; i < cantDiamantes; i++) {
        diamantes[i].dibujar();

        //evaluo colision
        if ( diamantes[i].colision (personaje.posXPj, personaje.posYPj, personaje.anchoP, personaje.altoP)) {
          puntosD++;
          //  println (puntosD);
        }
      } 

      for (int i = 0; i < cantMonedas; i++) {
        moneda[i].dibujar();    

        //evaluo colision
        if ( moneda[i].colision (personaje.posXPj, personaje.posYPj, personaje.anchoP, personaje.altoP)) {
          puntosM++;
          //    println (puntosM);
        }
      }
      if (puntosM >=  10|| puntosD >=  10) {
        println(" continuar ");
        if (puntosM > puntosD) {
          this.pantallaActual = 2;
        } else {
          this.pantallaActual = 3;
        }
      }
    }
    if (this.pantallaActual == 2) {
      pantallaFinM.dibujar();

      println("DIBUJAR PANTALLA DE MONEDAS");
      if (mousePressed) {
        this.pantallaActual = 0;
        this.puntosM = 0;
        this.puntosD = 0;
      }
    } else if (this.pantallaActual == 3) {
      println("DIBUJAR PANTALLA DE DIAMANTES");
      pantallaFinD.dibujar();
      if (mousePressed) {
        this.pantallaActual = 0;
        this.puntosM = 0;
        this.puntosD = 0;
      }
    }
    
  }


  void teclaPresionada() {
    if (this.pantallaActual == 0) {
      cambiarSigPant();
    }
  }




  void cambiarSigPant() {
    if (this.pantallaActual == 0) {
      this.pantallaActual = 1;
    }
  }
  
  void mover(){
    personaje.mover();
    
  }
}
