  class classCamada{
  int lar, alt; // largura e altura da imagem em tiles (no nosso exemplo, 20x20).
  int tLar, tAlt; //largura e altura de um tile
  PImage tImage; //tile image, ou tilemap
  byte[][] layer; // matriz de bricks
  
  public byte get(int linha, int coluna){
    return layer[linha][coluna];
  }
  
  public classCamada(int l, int a, String nomeArquivo, int tLar, int tAlt, PImage tImage){
    lar=l;
    alt=a;
    this.tAlt=tAlt;
    this.tLar=tLar;
    this.tImage=tImage;
    
    byte[] b;
    b=loadBytes(nomeArquivo);
    layer = new byte[alt][lar];
    for(int i=0;i<b.length;i++){      
      layer[i/lar][i%lar]=b[i];
    }
  
  }
  
  public void desenhe(){
    for(int i=0; i<alt; i++){
      for(int j=0; j<lar; j++){
        //desenhar layer[i][j]
        image(tImage.get(layer[i][j]*tLar,0,tLar,tAlt),j*tLar - cameraX, i*tAlt - cameraY);
      }
    }
  }
}
