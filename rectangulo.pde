void rectangulo(int nulo, int tam) {
  for (int a=tam-cant*5; a>cant; a--) {
    rectMode(CENTER);
    fill(nulo);
    rect(width/2, height/2, a, a, redondear);
  }
}
