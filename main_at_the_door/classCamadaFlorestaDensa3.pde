class classCamadaFlorestaDensa3{
  ArrayList<classObstaculo> obstaculos; 
  PImage frente, fundo;
  
  public classCamadaFlorestaDensa3(PImage fundo,PImage frente){
    this.frente = frente;
    this.fundo = fundo;
  obstaculos = new ArrayList<classObstaculo>();
  obstaculos.add(new classObstaculo(0,0,310,95));
  obstaculos.add(new classObstaculo(0,195,310,95));
  obstaculos.add(new classObstaculo(211,162,30,24));
  obstaculos.add(new classObstaculo(176,100,30,24));
  obstaculos.add(new classObstaculo(55,100,30,24));
  obstaculos.add(new classObstaculo(9,165,30,24));
  
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
