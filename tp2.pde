/*Juan Santiago de Udaeta.
Legajo: 82545/1
Trabajo practico 2:Animacion Creditos//recuperatorio.
Tecnologia multimedial 1.
Comision: 4.*/

//Variabes para tipografias y imagenes:
PImage noches, templo, atardecer, flor1, flor2;
PImage ballena, aguila, gigante, cueva, isla, balsa, alas;
PFont personajes, arabe, fin, lasMil;
//Variables para controlara las pantallas:
int posY, pantalla=0;
//variables para tamaño o ubicacion:
int mitadAncho=200, radio=25, centena=100, diametro=50;
//Variable para velocidad
float velo=1.5;
//Variable booleana:
boolean estado=false, estado2=false;
//Variable para el color:
color colorText;

void setup() {
  size(400, 400);
  //caraga de tipografias:
  fin=loadFont("SketchCraftyRegular-60.vlw");
  arabe=loadFont("ArabDancesMediumItalic-44.vlw");
  personajes=loadFont("Rodja_Bold_Alt_Slanted-30.vlw");
  lasMil=loadFont("XXIIARABIAN-ONENIGHTSTAND-Bold-25.vlw");
  //para las imagenes:
  noches=loadImage("noches.jpg");
  flor1=loadImage("flor1.png");
  flor2=loadImage("flor2.png");
  atardecer=loadImage("atardecer.jpg");
  ballena=loadImage("ballena.jpg");
  aguila=loadImage("aguila.jpg");
  gigante=loadImage("gigante.jpg");
  cueva=loadImage("cueva.jpg");
  isla=loadImage("isla.jpg");
  balsa=loadImage("balsa.jpg");
  alas=loadImage("alas.jpg");
  textAlign(CENTER, TOP);
  //valores de variables:
  posY=height;
  imageMode(CENTER);
}

void draw() {
  //variable para cambiar la opacidad:
  int reMapeo=round(map(posY, height, 0, 255, diametro));
  int reMapeo2=round(map(posY, height, 0, diametro, 0));
  //pantallas:
  if (posY<=-50)
  {
    pantalla++;
    posY=height;
  }

  if (pantalla==0) {
    background(224, 199, 152);
    background(180, 172, 157, 60);
    image(atardecer, width/2, height/2, mitadAncho*3, mitadAncho*3);
    textFont(fin);
    colorText=color(255, 188, 0);
    fill(colorText, reMapeo);
    text("Fin.", width/2, posY);
  } else if (pantalla==1)
  {
    image(flor1, width/4, posY, width/2, height*3);
    image(flor2, width-centena, posY, width/2, height*3);
    textFont(arabe);
    colorText=color(3, 171, 252);
    fill(colorText, reMapeo);
    text("Simbad el marino.", width/2, posY);
  } else if (pantalla==2)
  {
    background(200);
    image(ballena, width/2, height/2, width, height);
    textFont(personajes);
    colorText=color(0);
    fill(colorText, reMapeo);
    text("primer viaje de Simbad.\n\nSimbad el marino\nSimbad el cargador\ne capitan\nel rey Mihrajan\nlos guardianes del rey", width/2, posY);
  } else if (pantalla==3)
  {
    image(aguila, width/2, height/2, width, height);
    textFont(personajes);
    colorText=color(3, 171, 252);
    fill(colorText, reMapeo);
    text("Segunado viaje de Simbad.\n\nSimbad el marino\nSimbad el cargador\nel capitan\nlos mercaderes", width/2, posY);
  } else if (pantalla==4)
  {
    image(gigante, width/2, height/2, width, height);
    textFont(personajes);
    colorText=color(232, 14, 32);
    fill(colorText, reMapeo);
    text("Tercer viaje de Simbad.\n\nSimbad el marino\nSimbad el cargador\n1° capitan\n2°capitan\nel viejo mercader", width/2, posY);
  } else if (pantalla==5)
  {
    image(cueva, width/2, height/2, width, height);
    textFont(personajes);
    colorText=color(245, 112, 252);
    fill(colorText, reMapeo);
    text("Cuarto viaje de Simbad.\n\nSimbad el marino\nSimbad el cargador\n1° capitan\n2°capitan\nel viejo mercader", width/2, posY);
  } else if (pantalla==6)
  {
    image(isla, width/2, height/2, width, height);
    textFont(personajes);
    colorText=color(2, 20, 108);
    fill(colorText, reMapeo);
    text("Quinto viaje de Simbad.\n\nSimbad el marino\nSimbad el cargador\nel Anciano del mar", width/2, posY);
  } else if (pantalla==7)
  {
    image(balsa, width/2, height/2, width, height);
    textFont(personajes);
    colorText=color(250, 117, 8);
    fill(colorText, reMapeo);
    text("Sexto viaje de Simbad.\n\nSimbad el marino\nSimbad el cargador\nel rey de Serendib\nel califa Harunj Al-Rashid", width/2, posY);
  } else if (pantalla==8)
  {
    image(alas, width/2, height/2, width, height);
    textFont(personajes);
    colorText=color(242, 7, 105);
    fill(colorText, reMapeo);
    text("Septimo viaje de Simbad.\n\nSimbad el marino\nSimbad el cargador\nel rey de Serendib\nel califa Harunj Al-Rashid\nel viejo jeque y su hija", width/2, posY);
  } else if (pantalla==9)
  {
    image(noches, width/2, height/2, width, height);
    textFont(lasMil);
    colorText=color(255, 247, 0);
    fill(colorText, reMapeo);
    text("Las Mil y Una Noches\nUna historia de Scheherazade.", width/2, posY);
  }

  //para ejecutar el movimiento de los creditos:
  if (posY>=-100 && pantalla<=9)
  {
    posY-=velo;
  } else {
    posY=height;
  }

  if (pantalla==10)
  {
    pantalla=0;
  }

  //para los botones cuadrados:
  if (estado==false)
  {
    if (  mouseX>=0 && mouseX<=radio && mouseY>=0 && mouseY<=radio)
    {
      colorText=color(141, 100, 255);
      fill(colorText);
      rect(0, 0, radio, radio);
    }
  }
  if (estado2==false)
  {
    if (  mouseX>=0 && mouseX<=radio && mouseY>=height-radio && mouseY<=height)
    {
      colorText=color(141, 100, 255);
      fill(colorText);
      rect(0, height-radio, radio, radio);
    }
  }

  if (estado==true || estado2==true)
  {
    textFont(lasMil);
    textSize(reMapeo2);
    colorText=color(random(reMapeo), random(reMapeo), random(reMapeo));
    fill(colorText);
    text("Simbad el marino\n un cuento de Scheherazade\n para el Sultan Shahriar", random(width), random(height));
  }

  if (estado==true)
  {
    if (  mouseX>=0 && mouseX<=radio && mouseY>=0 && mouseY<=radio)
    {
      colorText=color(141, 100, 255);
      fill(colorText);
      rect(0, 0, radio, radio);
    }
  }

  if (estado2==true)
  {
    if (  mouseX>=0 && mouseX<=radio && mouseY>=height-radio && mouseY<=height)
    {
      colorText=color(141, 100, 255);
      fill(colorText);
      rect(0, height-radio, radio, radio);
    }
  }

  //para el boton circular:
  if (dist(width-radio, height/radio+10, mouseX, mouseY)<=radio*2)
  {
    colorText=color(7, 245, 116);
    fill(colorText);
    ellipse(width-radio, height/radio+10, radio*2, radio*2);
  }

  //para imprimir en la consola:
  println("mouseX"+mouseX, "mouseY"+mouseY);
  println("dist"+dist(width-radio, height/radio+10, mouseX, mouseY));
  println("reMapeo"+reMapeo);
  println("posY:"+posY);
}

void mouseClicked() {
  //ejecutar el boton circular:
  if (dist(width-radio, height/radio+10, mouseX, mouseY)<=radio*2) {
    pantalla=0;
    posY=height;
    estado=false;
    estado2=false;
  }

  //para ejecutar los botones cuadrados:
  if (estado==false &&   mouseX>=0 && mouseX<=radio && mouseY>=0 && mouseY<=radio
    || estado2==false && mouseX>=0 && mouseX<=radio && mouseY>=height-radio && mouseY<=height)
  {
    estado=true;
    estado2=true;
  } else
  {
    estado=false;
    estado2=false;
  }
}

void keyPressed() {
  //ejecutar el boton:
  if (estado==false)
  {
    estado=true;
  } else
  {
    estado=false;
  }
}
