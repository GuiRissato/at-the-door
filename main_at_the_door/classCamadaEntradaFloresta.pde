class classCamadaEntradaFloresta{
  ArrayList<classObstaculo> obstaculos; 
  PImage frente, fundo;
  
  public classCamadaEntradaFloresta(PImage fundo,PImage frente){
    this.frente = frente;
    this.fundo = fundo;
    obstaculos = new ArrayList<classObstaculo>();
    obstaculos.add(new classObstaculo(0,0,166,352));
    obstaculos.add(new classObstaculo(330,0,170,352));
    
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
  image(fundo,-50,0,600,680);
  image(frente,-50,0,600,680);
}
}
