class classCamadaEntradaFloresta2{
  
  ArrayList<classObstaculo> obstaculos; 
  PImage fundoAnima;
  PImage[] anima = new PImage[6];
  classTimer t;
  int quadro;

  public classCamadaEntradaFloresta2(PImage fundo, PImage anima1, PImage anima2, PImage anima3, PImage anima4, PImage anima5, PImage anima6){
     t = new classTimer(900/6);
    fundoAnima = fundo;
    anima[0] = anima1;
    anima[1] = anima2;
    anima[2] = anima3;
    anima[3] = anima4;
    anima[4] = anima5;
    anima[5] = anima6;
    
    obstaculos = new ArrayList<classObstaculo>();
     obstaculos.add(new classObstaculo(25,5,30,42)); 
     obstaculos.add(new classObstaculo(93,11,30,42)); 
     obstaculos.add(new classObstaculo(93,11,30,42)); 
     obstaculos.add(new classObstaculo(196,11,30,42));
     obstaculos.add(new classObstaculo(226,73,30,42));
     obstaculos.add(new classObstaculo(40,96,30,42));
     obstaculos.add(new classObstaculo(174,136,30,42));
     obstaculos.add(new classObstaculo(95,168,30,42));
     obstaculos.add(new classObstaculo(27,212,30,42));
     obstaculos.add(new classObstaculo(169,214,30,42));
     obstaculos.add(new classObstaculo(234,192,30,42));
     obstaculos.add(new classObstaculo(8,1,1,300));
     obstaculos.add(new classObstaculo(8,280,92,150));
     obstaculos.add(new classObstaculo(180,280,150,42));
     obstaculos.add(new classObstaculo(282,2,20,300));
   
    
  }
  
  void animaEF2(){
  if(t.disparou()){
    quadro=(quadro+1)%6;
  }

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
    animaEF2();
    image(fundoAnima,-2,0,300,300);
    image(anima[quadro],-2,0,300,300);
  
  }

}
