//nombre del profesor:Bogiolachi,Jose.
//tp0:figuras.

//Varaibles:
PImage italia;
int palabraItalia;

//Se abre el evento setup:
void setup() {
  size(500, 500); 
  italia=loadImage("italia.png");
  palabraItalia=60;
}

//Se abre el evento draw para ejecutar el codigo:
void draw() {
  background(52, 183, 120);
  imageMode(CENTER);
  image(italia, width/2, height-palabraItalia, 100, 100);

  //la pelota de futball:
  fill(230);
  ellipse(230, 58, 60, 112);

  //Los parches de la pelota de futball:
  pushStyle();
  fill(0);
  triangle(213, 18, 218, 7, 207, 25);
  noStroke();
  quad(230, 4, 240, 5, 248, 18, 242, 24);
  triangle(244, 24, 232, 4, 232, 17);
  quad(213, 31, 224, 32, 226, 53, 209, 53);
  triangle(226, 51, 209, 51, 217, 66);
  quad(236, 58, 252, 57, 248, 79, 238, 79);
  triangle(243, 45, 236, 60, 252, 59);
  quad(220, 108, 231, 108, 230, 94, 213, 94);
  triangle(217, 87, 231, 96, 213, 96);
  popStyle();

  //Extremidades=
  quad(269, 87, 201, 137, 208, 176, 276, 125);
  quad(245, 148, 276, 125, 242, 275, 223, 259);
  rect(165, 218, 30, 166);
  quad(223, 257, 214, 292, 174, 239, 183, 201);


  //Extremidades con color rojo=
  pushStyle();
  fill(242, 46, 46);
  quad(269, 87, 276, 125, 256, 139, 247, 103);
  rect(165, 218, 30, 56);
  quad(242, 275, 223, 259, 235, 206, 254, 222);
  popStyle();

  //extremidades con color verde=
  pushStyle();
  fill(3, 140, 23);
  quad(201, 137, 208, 176, 229, 159, 221, 122);
  rect(165, 329, 30, 56);
  quad(245, 148, 276, 125, 265, 174, 244, 158);
  quad(174, 239, 183, 201, 205, 232, 195, 266);
  popStyle();
}

//Eventp mouseclicked para indicar la ubicacion de mouseX e Y al momento de apretar:
void mouseClicked() {
  println("ubicacion=", mouseX, mouseY);
}
