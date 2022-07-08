void estado2() {
  if (pantalla==2) {
    background(82, 204, 227); 
    for (int a=0; a<cant; a++) {
      image(patos[a], posX[a], posY[a], tamUno[a], tamDos[a]); 
      if (posX[a]>width+tamUno[a]) {
        tamUno[a] = random(40, 60);
        tamDos[a]=random(40, 60);
        dir[a] = random(1, 3);
        posX[a] = random(-200, -100);
        posY[a] = random(tamDos[a]/2, height/2);
      }
      posX[a] += dir[a];
      if (derribar(balaX, balaY, posX[a], posY[a], tamUno[a])) {
        disparar = false;
        posX[a] = random(-200, -100);
        posY[a] = random(tamDos[a]/2, height/2);
        puntaje++;
      }
    }
    //dibujo y color de la bala:
    fill(222, 143, 47)
      ;
    ellipse(balaX, balaY, 10, 20);
    if (disparar && balaY> 0) {
      //velocidad de la bala:
      balaY -= 20;
    } else {
      balaX = mouseX+20;
      balaY = height-60;
      disparar = false;
    }
    image(escopeta, mouseX, height-80, 40, 80);
    temporizador(width-60, 0+20);
    imprimePuntaje(width-60, 0+40);
    mira(mouseX, mouseY, 30);
    noCursor();
  } else {
    cursor();
  }
}
