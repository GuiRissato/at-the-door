class classCamadaFlorestaDensa2 {
  
   PImage frente, fundo;

  public classCamadaFlorestaDensa2(PImage fundo,PImage frente){
    this.frente = frente;
    this.fundo = fundo;
  
  }
  
  void desenha(){
  image(fundo,0,-16,500,550);
  image(frente,0,-16,500,550);
}


}
