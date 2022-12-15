class Asteroides {

  int atam;
  float aposX,aposY,avel, adirec;
  Asteroides(){
    aposX= random(width);
    aposY=random(height);
    avel=random(2,5);
    atam=int(random(20,60));
    adirec=random(190);
  }
  void dibujarAsteroides(){
    ellipse(aposX,aposY,atam,atam);
  }
  void moverAsteroides(){
    aposX=aposX+avel*cos(radians(adirec));
    aposY=aposY+avel*sin(radians(adirec));
  }
}
