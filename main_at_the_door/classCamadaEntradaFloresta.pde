class classCamadaEntradaFloresta{
  ArrayList<classObstaculo> obstaculos; 
  PImage frente, fundo;
  
  public classCamadaEntradaFloresta(PImage fundo,PImage frente){
    this.frente = frente;
    this.fundo = fundo;
    obstaculos = new ArrayList<classObstaculo>();
    obstaculos.add(new classObstaculo(0,0,92,208));
    obstaculos.add(new classObstaculo(203,0,150,208));
    obstaculos.add(new classObstaculo(0,0,60,300));
    obstaculos.add(new classObstaculo(0,0,60,300));
    obstaculos.add(new classObstaculo(0,280,280,280));
    obstaculos.add(new classObstaculo(237,0,280,280));
    
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
