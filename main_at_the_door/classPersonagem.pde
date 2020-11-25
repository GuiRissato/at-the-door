class classPersonagem{
int x,y;
int lar, alt;
int v;
int ani;
int quadro; //quadro da animação corrente
classTimer t; //Timer da animação
PImage[] maroaki = new PImage[10];
PImage[] mostraPersonagem = new PImage[3];
  
public classPersonagem(int x, int y, int v,int tempoAnimacao, PImage[] frente, PImage[] costas, PImage[] lateral, int lar, int alt){
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

this.alt= alt;
this.lar = lar;
  
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


boolean colidiCenario(){
 if(cenarioAtual == 0){
    return cmEF.colidiu();
  }
    
 if(cenarioAtual == 1){
   return cmEF2.colidiu();
  }
  
 if(cenarioAtual == 2){
   return cmFAS.colidiu();
}
if(cenarioAtual == 3){
  return cmED.colidiu();
}
if(cenarioAtual == 4){
  return cmEM.colidiu();
}

return false;
}

void desenha(){
 
 image(mostraPersonagem[quadro],x,y,lar*1.5,alt*1.5);
   if(cenarioAtual == 0){
      if(y <= -17){
        cenarioAtual = 1;
        x = 146;
        y = 273;
      }  
  }
  if(cenarioAtual == 1){
      if(y <= -17){
        cenarioAtual = 2;
        x = 137;
        y = 266;
      }
    }
    if(cenarioAtual == 2){
      if(x<5 && y>150 && y < 230 ){
        cenarioAtual = 3;
        x = 290;
        y = 137;
      }
  }
  if(cenarioAtual == 3){
      if(x < 1){
        cenarioAtual = 4;
        x= 282;
        y= 134;
      }
    }
    if(cenarioAtual == 4){
      if(x < 1){
        cenarioAtual = 5;
        x = 282;
        y = 134;
      }
  }
  //if(cenarioAtual == 5){
  //    if(y >= 454){
  //      cenarioAtual = 6;
  //    }
  //  }
  //  if(cenarioAtual == 6){
    //  if(y <= -17){
    //    cenarioAtual = 7;
    //}
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
  if(colidiCenario()){
    if(dir){
       x-=v;
    }else{
      x+=v;
    }
  }
  
  if(cima){
    y-=v;
    ani = CIMA; 
  }
  else if(baixo){
    y+=v;
    ani = BAIXO;
  }
  
  if(colidiCenario()){
    if(cima){
       y+=v;
    }else{
      y-=v;
    }
  }

}
}
