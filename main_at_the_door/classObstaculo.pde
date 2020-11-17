class classObstaculo{
  
  int x,y,lar,alt;
  
  public classObstaculo(int x,int y,int lar, int alt){
    this.x = x;
    this.y = y;
    this.lar = lar;
    this.alt = alt;
  }
  
  boolean colidiu(){
    return colidiuX() && colidiuY();
  }
  
  boolean colidiuX(){
    int a,b,c,d;
    a=x;
    b=x+lar;
    c=pm.x + 10;
    d =pm.x + pm.lar -10;
    
    if(a<d && c<b){
      return (a<d && c<b);
    } 
    return false;
  }
  
  boolean colidiuY(){
   int a,b,c,d;
    a=y;
    b=y+alt;
    c=pm.y - 8;
    d =pm.y + pm.alt + 8;
    
    if(a<d && c<b){
      return true;
    } 
    return false;
  }
  
  
}
