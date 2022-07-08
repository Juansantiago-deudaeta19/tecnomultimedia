boolean derribar(float paraBalaX, float paraBalaY, float puntoX, float puntoY, float tam) {
  float distan = dist(paraBalaX, paraBalaY, puntoX, puntoY);
  return distan <tam;
}
