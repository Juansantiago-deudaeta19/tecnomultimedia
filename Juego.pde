class Juego {
  Nave n;
  Asteroides[]a;
  Asteroides[]b;
  Juego() {
    n=new Nave();
    a=new Asteroides[2];

    for (int x=0; x<a.length; x++) {
      a[x]=new Asteroides();
    }
  }

  void dibujarJuego() {
    n.dibujarNave();
    n.moverNave();
    for (int x=0; x<a.length; x++) {
      a[x].dibujarAsteroides();
    }
    moverAsteroide();
  }

  void moverAsteroide() {
    for (int x=0; x<a.length; x++) {
      a[x].moverAsteroides();
    }
  }
}
