class Creditos {


  //atributos
  PImage img; // imagenes
  int numImg;
  int animacion;
  PFont font;
  String texto;
  int posYImg, posXTxt, posYTxt;



  //constructor

  Creditos (int numImg_, String texto_, int posYImg_, int posXTxt_, int posYTxt_) {
    this.img = loadImage ( "0" + numImg_ + ".jpg");
    this.font = loadFont ("MaturaMTScriptCapitals-48.vlw");
    this.texto = texto_;
    this. posYImg = posYImg_;
    this. posXTxt = posXTxt_;
    this. posYTxt = posYTxt_;
  }





  //metodos

  void dibujarYAnimar() {   

    image (this.img, 0, posYImg + animacion);
    textFont (font);
    textSize (30);
    fill (255);
    text (this.texto, posXTxt, posYTxt + animacion);
    animacion++;
  }
}
