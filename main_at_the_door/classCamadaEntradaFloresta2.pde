class classCamadaEntradaFloresta2{
  
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
  }
  
  void animaEF2(){
  if(t.disparou()){
    quadro=(quadro+1)%6;
  }

}

void desenha(){
    animaEF2();
    image(fundoAnima,0,-16,500,550);
    image(anima[quadro],0,-16,500,550);
  
  }

}
