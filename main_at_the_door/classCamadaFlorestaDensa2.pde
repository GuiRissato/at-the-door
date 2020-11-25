class classCamadaFlorestaDensa2 {
  ArrayList<classObstaculo> obstaculos; 
  PImage frente, fundo;

  public classCamadaFlorestaDensa2(PImage fundo,PImage frente){
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
  image(fundo,-2,0,300,300);
  image(frente,-2,0,300,300);
}


}
