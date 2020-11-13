class classCamadaFlorestaDensa3{

  PImage frente, fundo;
  
  public classCamadaFlorestaDensa3(PImage fundo,PImage frente){
    this.frente = frente;
    this.fundo = fundo;
  
  }
  
  void desenha(){
  image(fundo,0,-16,500,550);
  image(frente,0,-16,500,550);
}
}
