class classCamadaEntradaFloresta{

   int lar, alt; // largura e altura da imagem em tiles (no nosso exemplo, 20x20).
  int tLar, tAlt; //largura e altura de um tile
  PImage frente, fundo;
  
  public classCamadaEntradaFloresta(PImage fundo,PImage frente){
    this.frente = frente;
    this.fundo = fundo;
  }
  
void desenha(){
  image(fundo,-50,0,600,680);
  image(frente,-50, 0,600,680);
}
}
