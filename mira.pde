void mira(float miraX, float miraY, int tam) {
  noFill();
  stroke(255, 0, 0);
  ellipse(miraX, miraY, tam, tam);
  line(mouseX-tam/2, mouseY, mouseX+tam/2, mouseY);
  line(mouseX, mouseY-tam/2, mouseX, mouseY+tam/2);
}
