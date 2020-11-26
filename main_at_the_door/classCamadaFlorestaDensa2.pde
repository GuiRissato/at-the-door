class classCamadaFlorestaDensa2 {
  ArrayList<classObstaculo> obstaculos; 
  PImage frente, fundo;

  public classCamadaFlorestaDensa2(PImage fundo,PImage frente){
    this.frente = frente;
    this.fundo = fundo;
  obstaculos = new ArrayList<classObstaculo>();
  obstaculos.add(new classObstaculo(0,0,310,50));
  obstaculos.add(new classObstaculo(0,190,300,84));
  obstaculos.add(new classObstaculo(12,56,65,42));
  obstaculos.add(new classObstaculo(12,56,65,42));
  obstaculos.add(new classObstaculo(176,60,150,42));
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
