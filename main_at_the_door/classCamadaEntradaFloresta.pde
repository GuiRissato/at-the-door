class classCamadaEntradaFloresta{

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
