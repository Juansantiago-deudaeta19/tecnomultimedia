void keyPressed() {
  if (pantalla==0 && key==ENTER) {
    pantalla=1;
  }
  if (keyCode==RIGHT || keyCode==LEFT) {
    pantalla=2;
    seg=0;
    puntaje=0;
  }
  if (key=='r' ) {
    pantalla=0;
    seg=0;
    puntaje=0;
  }
}
