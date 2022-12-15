class Nave{
  int nX,nY,ntam,nvel;

  Nave(){
    nX=width/2;
    nY=height/2;
    ntam=30;
    nvel=4;
  }
  void dibujarNave(){
    triangle(nX-ntam/2,nY,nX+ntam/2,nY,nX,nY-ntam);
  }
  void moverNave(){
    if(keyPressed){
      if(keyCode==RIGHT && nX+ntam/2<width){
        nX+=nvel;
      }
      if(keyCode==LEFT && nX-ntam/2>0){
        nX-=nvel;
      }
      if(keyCode==DOWN && nY+ntam<height){
        nY+=nvel;
      }
      if(keyCode==UP && nY>0){
        nY-=nvel;
      }
      /*if(keyCode==UP && keyCode==LEFT){
        nX-=nvel;
        nY-=nvel;
      }*/
    }
  }
}
