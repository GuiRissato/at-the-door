class classEntradaMasmorra{
    ArrayList<classObstaculo> obstaculos; 
    PImage fundoAnima;
    PImage[] anima = new PImage[4];
    classTimer t;
    int quadro;
    
  public classEntradaMasmorra(PImage fundo,PImage anima1, PImage anima2, PImage anima3, PImage anima4){
      t = new classTimer(900/6);
    fundoAnima = fundo;
    anima[0] = anima1;
    anima[1] = anima2;
    anima[2] = anima3;
    anima[3] = anima4;
    
        obstaculos = new ArrayList<classObstaculo>();
    obstaculos.add(new classObstaculo(100,160,110,47));
    obstaculos.add(new classObstaculo(5,171,30,42));
    obstaculos.add(new classObstaculo(260,170,30,42));
    obstaculos.add(new classObstaculo(84,170,134,47));
    obstaculos.add(new classObstaculo(0,0,310,29));
    obstaculos.add(new classObstaculo(26,25,15,48));
    obstaculos.add(new classObstaculo(70,36,15,48));
    obstaculos.add(new classObstaculo(119,35,15,48));
    obstaculos.add(new classObstaculo(162,37,15,48));
    obstaculos.add(new classObstaculo(210,33,15,48));
    obstaculos.add(new classObstaculo(254,33,15,48));
    
    
    
  
  }
  
   void animaEM(){
  if(t.disparou()){
    quadro=(quadro+1)%4;
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
    animaEM();
    image(fundoAnima,-2,0,300,300);
    image(anima[quadro],-2,0,300,300);
  
  }

}
