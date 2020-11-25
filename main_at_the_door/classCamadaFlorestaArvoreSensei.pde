class classCamadaFlorestaArvoreSensei{
  ArrayList<classObstaculo> obstaculos;
  PImage fundoAnima;
  PImage[] anima = new PImage[4];
  classTimer t;
  int quadro;
  
public classCamadaFlorestaArvoreSensei(PImage fundo, PImage anima1, PImage anima2, PImage anima3, PImage anima4){
  t = new classTimer(2000/6);
  fundoAnima = fundo;
  anima[0] = anima1;
  anima[1] = anima2;
  anima[2] = anima3;
  anima[3] = anima4; 
   obstaculos = new ArrayList<classObstaculo>();
    obstaculos.add(new classObstaculo(44,228,30,42));
    obstaculos.add(new classObstaculo(129,208,30,42));
    obstaculos.add(new classObstaculo(202,238,30,42));
    obstaculos.add(new classObstaculo(223,190,30,42));
    obstaculos.add(new classObstaculo(69,171,30,42));
    obstaculos.add(new classObstaculo(91,89,30,42));
    obstaculos.add(new classObstaculo(20,99,30,42));
    obstaculos.add(new classObstaculo(240,10,30,42));
    obstaculos.add(new classObstaculo(215,105,30,42));
    obstaculos.add(new classObstaculo(180,42,30,42));
    obstaculos.add(new classObstaculo(91,4,30,42));
    obstaculos.add(new classObstaculo(142,95,64,50));
    obstaculos.add(new classObstaculo(156,142,30,42));
    obstaculos.add(new classObstaculo(26,9,41,47));
    obstaculos.add(new classObstaculo(285,0,3,290));
    obstaculos.add(new classObstaculo(-5,225,13,180));
    obstaculos.add(new classObstaculo(-5,0,13,146));
   
}

void animaAS(){
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
    animaAS();
    image(fundoAnima,0,-2,300,300);
    image(anima[quadro],0,-2,300,300);
  
  }
}
