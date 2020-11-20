// Imagens
PImage[] imageMaroakiFrente = new PImage[3];
PImage[] imageMaroakiLateralEsqDir = new PImage[4];
PImage[] imageMaroakiCostas = new PImage[3];
classPersonagem pm;
classCamadaEntradaFloresta cmEF;
classCamadaEntradaDensa cmED;
classCamadaFlorestaArvoreSensei cmFAS;
classCamadaFlorestaDensa2 cmFD2;
classCamadaFlorestaDensa3 cmFD3;
classCamadaEntradaFloresta2 cmEF2;
classCamadaFinalBoss cmFB;
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

PImage[] cenario = new PImage[7];

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
void setCenarioFlorestaArvoreSensei(){
    cenario[0] = loadImage("/images/floresta-arvore-sensei/l0_1.png");
    cenario[1] = loadImage("/images/floresta-arvore-sensei/l1_1.png");
    cenario[2] = loadImage("/images/floresta-arvore-sensei/l1_2.png");
    cenario[3] = loadImage("/images/floresta-arvore-sensei/l1_3.png");
    cenario[4] = loadImage("/images/floresta-arvore-sensei/l1_4.png");
    cmFAS = new classCamadaFlorestaArvoreSensei(cenario[0],cenario[1],cenario[2],cenario[3],cenario[4]);
    
}

void setCenarioFlorestaDensa2(){
  cenario[0] = loadImage("/images/floresta-densa-2/l0_1.png");
  cenario[1] = loadImage("/images/floresta-densa-2/l1_1.png");
  cmFD2 = new classCamadaFlorestaDensa2(cenario[0],cenario[1]);
}

void setCenarioFlorestaDensa3(){
  cenario[0] = loadImage("/images/floresta-densa-3/l0_1.png");
  cenario[1] = loadImage("/images/floresta-densa-3/l1_1.png");
  cmFD3 = new classCamadaFlorestaDensa3(cenario[0],cenario[1]);
}

void setCenarioFlorestaEntrada2(){
  cenario[0] = loadImage("/images/floresta-entrada/l0_Floresta21.png");
  cenario[1] = loadImage("/images/floresta-entrada/l1_Floresta21.png");
  cenario[2] = loadImage("/images/floresta-entrada/l1_Floresta22.png");
  cenario[3] = loadImage("/images/floresta-entrada/l1_Floresta23.png");
  cenario[4] = loadImage("/images/floresta-entrada/l1_Floresta24.png");
  cenario[5] = loadImage("/images/floresta-entrada/l1_Floresta25.png");
  cenario[6] = loadImage("/images/floresta-entrada/l1_Floresta26.png");
  cmEF2 = new classCamadaEntradaFloresta2(cenario[0],cenario[1],cenario[2],cenario[3],cenario[4],cenario[5],cenario[6]);
}

void setCenarioFinalBoss(){
  cenario[0] = loadImage("/images/final-boss/l0_sprite_1.png");
  cenario[1] = loadImage("/images/final-boss/l1_sprite_1.png");
  cenario[2] = loadImage("/images/final-boss/l1_sprite_2.png");
  cenario[3] = loadImage("/images/final-boss/l1_sprite_3.png");
  cenario[4] = loadImage("/images/final-boss/l1_sprite_4.png");
  cenario[5] = loadImage("/images/final-boss/l1_sprite_5.png");
  cmFB = new classCamadaFinalBoss(cenario[0],cenario[1],cenario[2],cenario[3],cenario[4],cenario[5]);
  
}


void setPersonagem(){
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
   pm = new classPersonagem(width/2,height/2,3,1000/6,imageMaroakiFrente,imageMaroakiCostas,imageMaroakiLateralEsqDir,16,16);
}

void setup(){
  size(300,300);
  
   cima=baixo=esq=dir=false;
   
   setPersonagem();
   setCenarioEntradaFloresta();
   setCenarioEntradaDensa();
   setCenarioFlorestaArvoreSensei();
   setCenarioFlorestaDensa2();
   setCenarioFlorestaDensa3();
   setCenarioFlorestaEntrada2();
   setCenarioFinalBoss();
  
   
}

 void keyPressed(){
  switch(key){
    case 'a': 
    esq=true;
    break;
    case 's':
    baixo=true;
    break;
    case 'd':
    dir=true;
    break;
    case 'w': 
    cima=true;
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
  background(0,0,0);
  if(cenarioAtual == 0){
    cmEF.desenha();
  }
  if(cenarioAtual == 1){
    cmEF2.desenha();
  }
  if(cenarioAtual == 2){
    cmFAS.desenha(); 
  }
  if(cenarioAtual == 3){
    cmED.desenha(); 
  }
  if(cenarioAtual == 4){
    cmFD2.desenha(); 
  }
  if(cenarioAtual == 5){
    cmFD3.desenha();
  }
  if(cenarioAtual == 6){
    cmFB.desenha();
  }
    
  pm.anima(); 
  pm.movimenta();
  pm.desenha();
  println(mouseX + ", " + mouseY);
}
