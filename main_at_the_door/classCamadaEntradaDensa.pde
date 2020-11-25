class classCamadaEntradaDensa{
  ArrayList<classObstaculo> obstaculos; 
  PImage frente, fundo;
  
  public classCamadaEntradaDensa(PImage fundo,PImage frente){
    this.frente = frente;
    this.fundo = fundo;
    obstaculos = new ArrayList<classObstaculo>();
    obstaculos.add(new classObstaculo(152,19,117,42));
    obstaculos.add(new classObstaculo(153,67,30,42));
    obstaculos.add(new classObstaculo(7,182,79,42));
    obstaculos.add(new classObstaculo(8,227,30,42));
    obstaculos.add(new classObstaculo(152,229,117,42));
    obstaculos.add(new classObstaculo(151,182,30,42));
    obstaculos.add(new classObstaculo(8,19,30,84));
    obstaculos.add(new classObstaculo(0,0,310,10));
    obstaculos.add(new classObstaculo(0,275,310,10));
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
