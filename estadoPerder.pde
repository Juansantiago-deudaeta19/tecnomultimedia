void estadoPerder() {
  if (pantalla==3) {
    background(0);
    text("Game Over", width/2-40, height/2);
    text("¿Quieres intertalo de vuelta?\npresiona: r", width/2, height/2-100);
    cursor();
  }
}
