void temporizador(int posX, int posY) {
  int milis=frameCount;
  if (milis%60==0) {
    seg++;
  }
  fill(234, 218, 33);
  text( seg, posX, posY);
}
