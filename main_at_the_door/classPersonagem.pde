class classPersonagem{
int x,y;
int v;
int ani;
int quadro; //quadro da animação corrente
classTimer t; //Timer da animação
PImage[] maroakiFrente = new PImage[3];
PImage[] maroakiLateral = new PImage[4];
PImage[] maroakiCostas = new PImage[3];
  
public classPersonagem(int x, int y, int v,int tempoAnimacao, PImage[] frente, PImage[] costas, PImage[] lateral){
this.x = x;
this.y = y;
this.v = v;
t = new classTimer(tempoAnimacao);
for(int i = 0 ; i < maroakiFrente.length;i++){
  this.maroakiFrente[i] = frente[i];
}
for(int i = 0 ; i < maroakiLateral.length;i++){
  this.maroakiLateral[i] = lateral[i];
}
for(int i = 0 ; i < maroakiCostas.length;i++){
  this.maroakiCostas[i] = costas[i];
}


  
}

void anima(){
  if(t.disparou())
    quadro=(quadro+1)%2;
    System.out.print(quadro);
}

void desenha(){
    image(maroakiLateral[quadro],x,y);
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
