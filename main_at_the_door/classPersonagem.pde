class classPersonagem{
int x,y;
int v;
int ani;
int quadro; //quadro da animação corrente
classTimer t; //Timer da animação
PImage[] maroaki = new PImage[10];
  
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
  
}

void anima(){
  if(t.disparou())
  if(baixo && cima){
    quadro=(quadro+1)%3;
  }
  if(esq && dir){
    quadro=(quadro+1)%2;
  }
}

void desenha(){
 image(maroaki[quadro],x,y);
 
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
