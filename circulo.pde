void circulo(int y, int tono) {
  for (int x=tam*3; x>cantDos; x-=15) {
    fill(violetaOscuro, tono);
    ellipse(width/2, y, x*cantDos/num, x*cantDos/num);
  }
}
