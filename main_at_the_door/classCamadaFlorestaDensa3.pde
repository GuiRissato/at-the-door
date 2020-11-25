class classCamadaFlorestaDensa3{
  ArrayList<classObstaculo> obstaculos; 
  PImage frente, fundo;
  
  public classCamadaFlorestaDensa3(PImage fundo,PImage frente){
    this.frente = frente;
    this.fundo = fundo;
  obstaculos = new ArrayList<classObstaculo>();
  }
  
   boolean colidiu(){
    for(classObstaculo x: obstaculos){
      if(x.colidiu()){
        return true;
      }
    }
    return false;
  }
  
  void desenha(){
  image(fundo,0,-16,500,550);
  image(frente,0,-16,500,550);
}
}
