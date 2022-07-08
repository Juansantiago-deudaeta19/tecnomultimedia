//nombre del profesor:Bogiolachi,Jose.
//tp0:figuras.

PFont pixel;
int cant = 3;
float [] posX = new float[cant];
float [] posY = new float[cant];
float [] tamUno = new float[cant];
float[] tamDos=new float[cant];
float [] dir = new float[cant];
float balaX, balaY; // ubicacion del proyectil
PImage[]patos=new PImage[3];
PImage escopeta, fondo;
boolean disparar;
int seg, pantalla, puntaje;

void setup() {
  size(500, 500);
  //carga de imagen y tipografia:
  escopeta=loadImage("escopeta.png");
  fondo=loadImage("fondo.png");
  pixel=createFont("pixel.ttf", 10);
  textFont(pixel);
  //carga de imagenes de los patos:
  for (int a=0; a<cant; a++) {
    patos[0]=loadImage("pato1.png");
    patos[1]=loadImage("pato2.png");
    patos[2]=loadImage("pato3.png");
    tamUno[a] = random(40, 60);
    tamDos[a] = random(40, 60);
    dir[a] = random(1, 3);
    posX[a] = random(-200, -100);
    posY[a] = random(tamDos[a]/2, height/2);
  }
  //ubicacion de la bala:
  balaX=mouseX;
  balaY = height-80;
}
void draw() {
  background(0);
  estado1();
  instrucc();
  estado2();
  if ( seg>=20) {
    pantalla=3;
    estadoPerder();
  }
  if (puntaje>=15) {
    pantalla=4;
    ganaste();
  }
  linkVideo();
}

void mousePressed() {
  disparar = true;
}
