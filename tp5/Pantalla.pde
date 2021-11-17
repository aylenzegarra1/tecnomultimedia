class Pantalla {
  
  //atributos
  PFont fuente;
  String saludo, explicacion,volver;
  PImage imagen;
  
  //constructor
  Pantalla (String saludo, String explicacion, String volver){
    this.imagen = loadImage ("ciudadArabe.jpg");
    this.fuente = loadFont ("MaturaMTScriptCapitals-48.vlw");
    this.saludo = saludo;
    this.explicacion = explicacion;
    this.volver = volver;
  }
  
  void dibujar (){
    
    image(imagen,0,0,width,height);
    textAlign(CENTER);
    textFont (fuente);
    textSize (30);
    fill(0);
    text (this.saludo,220,100);
    fill(255);
    textSize (25);
    text (this.explicacion,220,270);
    textSize (20);
    text (this.volver,220,350);

  }
}
