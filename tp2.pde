//Juan Santiago de Udaeta, lEgajo=82545/1
//Nombre del profesor=Bogiolachi,Jose.


int cant = 10;
int cantDos=10;
int tam;
int paraX;
int paraY;
int nulo=0;
int num=8;
int redondear=10;
color rojo, azul, violetaOscuro,violeta;
boolean tecla;
void setup() {
  size(500, 500);
  tam = width/cant;
  paraX=tam;
  paraY=tam;
  tecla=false;
  violetaOscuro=color(91, 9, 235);
  violeta=color(120, 18, 255);
}
void draw() {
  background(nulo);
  columnaCirculos();
  rectangulo(0, width/2);
  circulo(height/2, 50);
  circuloCentral();
  llovisna(255);
}
