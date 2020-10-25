// Imagens
PImage[] imageMaroakiFrente = new PImage[3];
PImage[] imageMaroakiLateralEsqDir = new PImage[4];
PImage[] imageMaroakiCostas = new PImage[3];
//ArrayList<PImage[]> personagem = new ArrayList<PImage[]>();
classPersonagem pm;
boolean cima,baixo,esq,dir;
final int BAIXO = 0;
final int ESQUERDA = 1;
final int CIMA = 2;
final int DIREITA = 3;

// Mapa
int cameraX, cameraY;
final int MARGEM = 32;
classCamada camadaFundo, camadaColisao, camadaFrente;
PImage cenario;


void setup(){
  size(1500,1500);
//set Personagem
  imageMaroakiFrente[0] = loadImage("/images/meraki-frente/Meraki(Frente2fps)2.png");
  imageMaroakiFrente[1] = loadImage("/images/meraki-frente/Meraki(Frente2fps)1.png");
  imageMaroakiFrente[2] = loadImage("/images/meraki-frente/Meraki(Frente2fps)0.png");
  imageMaroakiLateralEsqDir[0] = loadImage("/images/meraki-lateral/Meraki(laterais4fps)0.png");
  imageMaroakiLateralEsqDir[1] = loadImage("/images/meraki-lateral/Meraki(laterais4fps)1.png");
  imageMaroakiLateralEsqDir[2] = loadImage("/images/meraki-lateral/Meraki(laterais4fps)2.png");
  imageMaroakiLateralEsqDir[3] = loadImage("/images/meraki-lateral/Meraki(laterais4fps)3.png");
  imageMaroakiCostas[0] = loadImage("/images/meraki-costas/Meraki(Costas2fps)0.png");
  imageMaroakiCostas[1] = loadImage("/images/meraki-costas/Meraki(Costas2fps)1.png");
  imageMaroakiCostas[2] = loadImage("/images/meraki-costas/Meraki(Costas2fps)2.png");
   pm = new classPersonagem(250,250,3,1000/6,imageMaroakiFrente,imageMaroakiCostas,imageMaroakiLateralEsqDir);
   cima=baixo=esq=dir=false;
   
   
}

 void keyPressed(){
  switch(key){
    case 'a': esq=true;
    break;
    case 's': baixo=true;
    break;
    case 'd': dir=true;
    break;
    case 'w': cima=true;
    break;
  }
}

void keyReleased(){
    switch(key){
    case 'a': esq=false;
    break;
    case 's': baixo=false;
    break;
    case 'd': dir=false;
    break;
    case 'w': cima=false;
    break;
  }
}

void draw(){
  background(0,90,0);
   pm.anima(); 
  pm.movimenta();
  pm.desenha();
}
