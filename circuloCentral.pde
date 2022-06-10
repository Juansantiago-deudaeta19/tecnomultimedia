 void circuloCentral(){
  for (int x=tam*2; x>cant; x-=5) {
    float tono=map(x, cant, tam*2, 255, 0);
    fill(violeta, tono);
    ellipse(width/2, height/2, x, x);
  }
  }
