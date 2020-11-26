class classCamadaFinalBoss {
   ArrayList<classObstaculo> obstaculos; 
   PImage fundoAnima;
   PImage[] anima = new PImage[6];
   classTimer t;
   int quadro;
   

  public classCamadaFinalBoss(PImage fundo, PImage anima1, PImage anima2, PImage anima3, PImage anima4, PImage anima5){
   t = new classTimer(1000/6);
    fundoAnima = fundo;
    anima[0] = anima1;
    anima[1] = anima2;
    anima[2] = anima3;
    anima[3] = anima4;
    anima[4] = anima5;
    obstaculos = new ArrayList<classObstaculo>();
    obstaculos.add(new classObstaculo(44,228,30,42));
    obstaculos.add(new classObstaculo(208,229,30,42));
    obstaculos.add(new classObstaculo(0,0,15,310));
    obstaculos.add(new classObstaculo(280,0,15,310));
    obstaculos.add(new classObstaculo(0,0,310,5));
    obstaculos.add(new classObstaculo(62,0,15,28));
    obstaculos.add(new classObstaculo(212,0,15,28));
  }
    
   void anima(){
  if(t.disparou()){
    quadro=(quadro+1)%5;
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
    anima();
    image(fundoAnima,-2,0,300,300);
    image(anima[quadro],-2,0,300,300);
  
  }
}
