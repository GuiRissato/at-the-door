class classPersonagem{
int x,y;
int v;
int ani;
int quadro; //quadro da animação corrente
classTimer t; //Timer da animação
PImage[] maroaki = new PImage[10];
PImage[] mostraPersonagem = new PImage[3];
  
public classPersonagem(int x, int y, int v,int tempoAnimacao, PImage[] frente, PImage[] costas, PImage[] lateral){
this.x = x;
this.y = y;
this.v = v;
t = new classTimer(tempoAnimacao);
for(int i = 0 ; i <= 2;i++){
  this.maroaki[i] = frente[i];
}
for(int i = 0 ; i <= 3;i++){
  this.maroaki[i+3] = lateral[i];
}
for(int i = 0 ; i <= 2;i++){
  this.maroaki[i+7] = costas[i];
}
mostraPersonagem[0]=frente[0];

  
}

void anima(){
  if(t.disparou()){
  
    if(cima){
      quadro=(quadro+1)%3;
      for(int i = 0; i < 3; i++){
      mostraPersonagem[i]=maroaki[7+i];
      }
    }
    if(baixo){
      quadro=(quadro+1)%3;
       for(int i = 0; i < 3; i++){
      mostraPersonagem[i]=maroaki[i];
    }
    }
    if(esq){
      quadro=(quadro+1)%2;
      for(int i = 0; i < 2; i++){
      mostraPersonagem[i]=maroaki[3+i];
    }
    
    }
    if(dir){
      quadro=(quadro+1)%2;
       for(int i = 0; i < 2; i++){
      mostraPersonagem[i]=maroaki[5+i];
    }
    }
    if((dir && baixo) || (dir && cima)){
      quadro=(quadro+1)%2;
       for(int i = 0; i < 2; i++){
      mostraPersonagem[i]=maroaki[5+i];
    }
    }
    
    if((esq && baixo) || (esq && cima)){
      quadro=(quadro+1)%2;
      for(int i = 0; i < 2; i++){
      mostraPersonagem[i]=maroaki[3+i];
    }
    }
  }
}

void desenha(){
 
 image(mostraPersonagem[quadro],x,y,60,60);
   if(cenarioAtual == 0){
      if(y <= -17){
        cenarioAtual = 1;
      }  
  }
  if(cenarioAtual == 1){
      if(y >= 454){
        cenarioAtual = 2;
      }
    }
    if(cenarioAtual == 2){
      if(y <= -17){
        cenarioAtual = 3;
      }
  }
  if(cenarioAtual == 3){
      if(y >= 454){
        cenarioAtual = 4;
      }
    }
    if(cenarioAtual == 4){
      if(y <= -17){
        cenarioAtual = 5;
      }
  }
  if(cenarioAtual == 5){
      if(y >= 454){
        cenarioAtual = 6;
      }
    }
    if(cenarioAtual == 6){
    //  if(y <= -17){
    //    cenarioAtual = 7;
    //}
    }
   
  
}

void movimenta(){
  if(dir){
    x+=v;
    ani = DIREITA;
  }
  else if(esq){
    x-=v;
    ani = ESQUERDA;
  }
  
  if(cima){
    y-=v;
    ani = CIMA; 
  }
  else if(baixo){
    y+=v;
    ani = BAIXO;
  }

}
}
