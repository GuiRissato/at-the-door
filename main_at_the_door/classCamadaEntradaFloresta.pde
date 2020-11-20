class classCamadaEntradaFloresta{
  ArrayList<classObstaculo> obstaculos; 
  PImage frente, fundo;
  
  public classCamadaEntradaFloresta(PImage fundo,PImage frente){
    this.frente = frente;
    this.fundo = fundo;
    obstaculos = new ArrayList<classObstaculo>();
    obstaculos.add(new classObstaculo(0,0,164,355));
    obstaculos.add(new classObstaculo(320,0,170,355));
    
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
  image(fundo,-50,0,400,400);
  image(frente,-50,0,400,400);
}
}
