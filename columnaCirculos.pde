void columnaCirculos() {
  for (int x=nulo; x<cant; x++) {
    for (int y=nulo; y<cant; y++) {
      for (int a=tam; a>cant; a-=3) {
        if (mouseX>x*paraX && mouseX<x*paraX+paraX && mouseY>y*paraY && mouseY<y*paraY+paraY) {
          azul=255;
          float tono=map(azul, 0, 255, 200, 10);
          fill(nulo, nulo, azul, tono);
          rect(x*paraX+paraX/2, y*paraY+paraY/2, a, a);
        } else {
          float violeta=map(a, tam, nulo, 50, 200);
          fill(violeta, nulo, violeta);
          ellipse(x*paraX+paraX/2, y*paraY+paraY/2, a, a);
        }
      }
    }
  }
}
