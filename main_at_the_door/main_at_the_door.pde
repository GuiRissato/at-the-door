// Imagens
PImage[] imageMaroakiFrente = new PImage[3];
PImage[] imageMaroakiLateralEsqDir = new PImage[4];
PImage[] imageMaroakiCostas = new PImage[3];
//ArrayList<PImage[]> personagem = new ArrayList<PImage[]>();
classPersonagem pm;
classCamadaEntradaFloresta cmEF;
classCamadaEntradaDensa cmED;
boolean cima,baixo,esq,dir;
int personagemParado = 0;
int cenarioAtual = 0;
final int BAIXO = 0;
final int ESQUERDA = 1;
final int CIMA = 2;
final int DIREITA = 3;

// Mapa
int cameraX, cameraY;
final int MARGEM = 32;
//classCamada camadaFundo, camadaColisao, camadaFrente;

PImage[] cenario = new PImage[12];

void setCenarioEntradaFloresta(){
   cenario[0] = loadImage("/images/entrada-da-floresta/l0_Floresta11.png");
   cenario[1] = loadImage("/images/entrada-da-floresta/l1_Floresta11.png");
   cmEF = new classCamadaEntradaFloresta(cenario[0],cenario[1]);
   
}

void setCenarioEntradaDensa(){
   cenario[0] = loadImage("/images/entrada-densa/l0_sprite_1.png");
   cenario[1] = loadImage("/images/entrada-densa/l1_sprite_1.png");
   cmED = new classCamadaEntradaDensa(cenario[0],cenario[1]);
    
}

void setup(){
  size(500,500);
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
   pm = new classPersonagem(width/2,height/2,3,1000/6,imageMaroakiFrente,imageMaroakiCostas,imageMaroakiLateralEsqDir);
   cima=baixo=esq=dir=false;
   setCenarioEntradaFloresta();
   setCenarioEntradaDensa();
  
   
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
    case 'a': 
    esq=false;
    personagemParado = 1;
    break;
    case 's': 
    baixo=false;
    personagemParado = 2;
    break;
    case 'd': 
    dir=false;
    personagemParado = 3;
    break;
    case 'w': 
    cima=false;
    personagemParado = 4;
    break;
  }
}

void draw(){
  background(255, 204, 100);
  if(cenarioAtual == 0){
    cmEF.desenha();
  }
  if(cenarioAtual == 1){
    cmED.desenha();
  }
  pm.anima(); 
  pm.movimenta();
  pm.desenha();
  
}
