//nombre del profesor:Bogiolachi,Jose.
//tp0:figuras.


//declaracion de la tipografia:
PFont tipoGod;

//declaracion  de las imagenes:
PImage inicio, god1, god2, god3, god4;
PImage god5, god6, god7, god8, god9, god10;
;
PImage logo, midgard, escenaFinal;
PImage boton1, boton2;
PImage boton3;

//declaracion  de variables para mopvimiento cambio de pantalla y cambiar las dimensiones de las figuras:

int altoImg=550;
int tamTipo=20, anchoX=100, alto=50, ancho=35;
int anchoLogo=400, alturaLogo=200;
int pantalla;
int cuenta;

//variables para calculos y altura en y:

float cuenta2;
float altoY=12.5;
float altura=550, altura1=1200, altura2=1200+170;
float altura3 =1200+320;
float altura4=1200+470, altura5=1200+500, altura6=1200+550, altura7=1200+620;
float altura8=1200+720, altura9=1200+750, altura10=1200+800, altura11=1200+830;
float altura12=1200+870, altura13=1200+930, altura14=1200+1020, altura15=1200+1050;
float alturaBoton=550;

//variables para la opacidad:

float opacidad1, opacidad2, opacidad3, opacidad4, opacidad5, opacidad6;
float opacidad7, opacidad8, opacidad9, opacidad10, opacidad11, opacidad12;
float opacidad13, opacidad14, opacidad15;
float opacidad16;
float opacidadImg=altura;

//variables para la distancia:
float distancia;

//varaibles para las botones:
boolean botonMidgard;
boolean botonPresionado1;
boolean botonPresionado2;
boolean botonPresionado3;
boolean teclaSi;

void setup() {
  //tamaño de la ventana:
  size(500, 500);

  //carga de tipografia:
  tipoGod=createFont("godofwar.TTF", tamTipo);
  textFont(tipoGod);

  //carga de las imagenes:
  inicio=loadImage("inicio.png");
  god1=loadImage("god1.png");
  god2=loadImage("god2.png");
  god3=loadImage("god3.png");
  god4=loadImage("god4.png");
  god5=loadImage("god5.png");
  god6=loadImage("god6.png");
  god7=loadImage("god7.png");
  god8=loadImage("god8.png");
  god9=loadImage("god9.png");
  god10=loadImage("god10.png");
  midgard=loadImage("midgard.png");
  logo=loadImage("logo.png");
  escenaFinal=loadImage("escenaFinal.png");
  boton1=loadImage("boton1.png");
  boton2=loadImage("boton2.png");
  boton3=loadImage("boton3.png");
  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  botonMidgard=false;
  botonPresionado1=false;
  botonPresionado2=false;
  botonPresionado3=false;
}

void draw() {

  background(0, 200);


  altura-=0.5;
  altura1-=0.5;
  altura2-=0.5;
  altura3-=0.5;
  altura4-=0.5;
  altura5-=0.5;
  altura6-=0.5;
  altura7-=0.5;
  altura8-=0.5;
  altura9-=0.5;
  altura10-=0.5;
  altura11-=0.5;
  altura12-=0.5;
  altura13-=0.5;
  altura14-=0.5;
  altura15-=0.5;

  alturaBoton-=0.2;


  //ejecucion del inicio:
  if (pantalla<=0) {
    image(inicio, width/2, height/2, width, height);
    image(midgard, width-alto, height-alto, alto, alto);
    botonMidgard=true;
    textSize(10);
    fill(255);
    text("Presiona el boton", width/2+ancho*3, height-alto);
    teclaSi=false;
    cuenta=0;
  }

  //ejecucion de cada una de las pantallas:
  if (pantalla==1) {
    image(god1, width/2, height/2, width, height);
    text("han pasado mas de un siglo desde la caida del panteon de las deidades griegas\n", width/2, altura);
    text("ahora el causante de tal acto, Kratos, el dios de la guerra griego,\n se ha movido a las tierras nordicas, donde desea hayar la paz que nunca pudo\n", width/2, altura+20);
    text("pero ahora su esposa Faye ha fallecido,\n por lo que el y su hijo Atreus decidieron seguir el ultimo deseo de ella.", width/2, altura+40);
    text("Deberan viajar al reino de Jotunheim;el reino de los gigantes;para esparcir sus cenizas", width/2, altura+60);
    image(boton1, width-anchoX/2, alto/2, alto/2, alto/2);
    image(boton2, width-anchoX/2+ancho, alto/2, alto/2, alto/2);
    botonPresionado1=true;
    botonPresionado2=true;
    teclaSi=true;
    cuenta=0;
  }
  if (pantalla==2) {
    image(god2, width/2, height/2, width, height);
    text("en su camino debieron enfrentar a poderosas bestias, como los troles", width/2, altura);
    text("todo para llegar al lago de nueve reinos\n y asi poder encontrar el portal al reino de los gigantes", width/2, altura+20);
    image(boton1, width-anchoX/2, alto/2, alto/2, alto/2);
    image(boton2, width-anchoX/2+ancho, alto/2, alto/2, alto/2);
    botonPresionado1=true;
    botonPresionado2=true;
    cuenta=0;
  }
  if (pantalla==3) {
    image(god3, width/2, height/2, width, height);
    text("al llegar al lago de los nueve reinos,\n se percataron de que la torre de Jotunheim no estaba.", width/2, altura);
    text("pero lo que si pudieron presenciar a un imponente ser", width/2, altura+20);
    image(boton1, width-anchoX/2, alto/2, alto/2, alto/2);
    image(boton2, width-anchoX/2+ancho, alto/2, alto/2, alto/2);
    botonPresionado1=true;
    botonPresionado2=true;
    cuenta=0;
  }
  if (pantalla==4) {
    image(god4, width/2, height/2, width, height);
    text("Jormundgander, tambien conocido como la serpiente del mundo,\n tan grande que rodea el propio planeta.", width/2, altura);
    text("La serpiente decidiria ayudarlos en su viaje", width/2, altura+20);
    image(boton1, width-anchoX/2, alto/2, alto/2, alto/2);
    image(boton2, width-anchoX/2+ancho, alto/2, alto/2, alto/2);
    botonPresionado1=true;
    botonPresionado2=true;
    cuenta=0;
  }
  if (pantalla==5) {
    image(god5, width/2, height/2, width, height);
    text("en su camino se vieron obligados a enfrentar a incontables bestias, criaturas,magicas,\ndragones,renacidos y semidioses.", width/2, altura);
    text("De todas estas batallas salieron victoriosos", width/2, altura+20);
    text("pero su ultima pelea estaba por empezar,\nBaldur el dios nordico 'inmortal'", width/2, altura+40);
    image(boton1, width-anchoX/2, alto/2, alto/2, alto/2);
    image(boton2, width-anchoX/2+ancho, alto/2, alto/2, alto/2);
    botonPresionado1=true;
    botonPresionado2=true;
    cuenta=0;
  }
  if (pantalla==6) {
    image(god6, width/2, height/2, width, height);
    fill(0);
    text("Kratos y su hijo pelearon ferosmente.\nPero Bladur era demasiado poderoso, era imparable", width/2, altura);
    text("aun asi nada los detendria de cunmplir el ultimo deseo de Faye", width/2, altura+20);
    text("Luego de una feroz pelea\nla cual azoto la misma tierra,Kratos y su hijo derrotaron a Baldur", width/2, altura+40);
    text("este acto terminaria teniedo una gran repercucion en asgard.", width/2, altura+60);
    text("Siendo una declaracion de guerra contra Odin y los demas dioses", width/2, altura+80);
    image(boton1, width-anchoX/2, alto/2, alto/2, alto/2);
    image(boton2, width-anchoX/2+ancho, alto/2, alto/2, alto/2);
    botonPresionado1=true;
    botonPresionado2=true;
    cuenta=0;
  }
  if (pantalla==7) {
    image(god7, width/2, height/2, width, height);
    fill(255);
    text("Luego de la batalla,Kratos y Atreus encontraron la torre de Jotunheim.", width/2, altura);
    text("Y usando el templo del arbor del mundo como vinculo del portal\nviajaron a el reino de los gigantes.", width/2, altura+20);
    image(boton1, width-anchoX/2, alto/2, alto/2, alto/2);
    image(boton2, width-anchoX/2+ancho, alto/2, alto/2, alto/2);
    botonPresionado1=true;
    botonPresionado2=true;
    cuenta=0;
  }
  if (pantalla==8) {
    image(god8, width/2, height/2, width, height);
    text("Al llegar pudieron apreciar que los gigantes estaban muertos.", width/2, altura);
    text("Practicamente extintos.", width/2, altura+20);
    text("Kratos y su hijo treparon a la colina mas alta del reino", width/2, altura+40);
    image(boton1, width-anchoX/2, alto/2, alto/2, alto/2);
    image(boton2, width-anchoX/2+ancho, alto/2, alto/2, alto/2);
    botonPresionado1=true;
    botonPresionado2=true;
    cuenta=0;
  }
  if (pantalla==9) {
    image(god9, width/2, height/2, width, height);
    fill(0);
    text("Alli mismo esparcieron las cenizas de Faye y se despidieron de ella", width/2, altura);
    text("Esta aventura concluye con el padre y el hijo volviendo a su hogar \n creyendo que sus viajes han terminado", width/2, altura+20);
    image(boton1, width-anchoX/2, alto/2, alto/2, alto/2);
    image(boton2, width-anchoX/2+ancho, alto/2, alto/2, alto/2);
    botonPresionado1=true;
    botonPresionado2=true;
  }

  if (cuenta>=1 && cuenta<=1060) {
    pantalla=10;
  }

  if (pantalla==10 ) {

    image(escenaFinal, width/2, height/2, width, height);
    image(boton1, width-anchoX/2, alto/2, alto/2, alto/2);
    fill(255);
    textSize(30);
    text("FIN", width/2, altura-45);
    botonPresionado1=true;
    botonPresionado2=false;
    cuenta++;
  }

  //uso de la variable cuenta para cambiar a pantalla 11
  if (cuenta>=1060 && cuenta<=4400) {
    pantalla=11;
  }

  if ( pantalla==11) {
    background(0);
    textSize(15);
    fill(255, opacidad1);
    text("CREDITOS:", width/2, altura1);
    fill(255, opacidad2);
    text("Actorxs:", width/2, altura2);
    fill(255, opacidad3);
    text("Christopher Judge\nSunny Suljic\nJeremy Davies\nDanielle Bisutti\nAlastair Duncan\nRobert Craighead\nAdam J.Harrington\nCarole Ruggier\nCorey Burton\nNolan North\nTroy Baker", width/2, altura3);
    fill(255, opacidad4);
    text("Director:", width/2, altura4);
    fill(255, opacidad5);
    text("Cory Barlog", width/2, altura5);
    fill(255, opacidad6);
    text("Productorxs:", width/2, altura6);
    fill(255, opacidad7);
    text("Brain Westergaard\nElizabeth Dahm Wang\nSean Lewellyn\nChad Cox\nEric Fong", width/2, altura7);
    fill(255, opacidad8);
    text("Artista:", width/2, altura8);
    fill(255, opacidad9);
    text("Derek Daniels", width/2, altura9);
    fill(255, opacidad10);
    text("Programador:", width/2, altura10);
    fill(255, opacidad11);
    text("Florian Strauss", width/2, altura11);
    fill(255, opacidad12);
    text("Escritores:", width/2, altura12);
    fill(255, opacidad13);
    text("Matt Sophos\nRichard Zangrande\nGaubert\nCory Barlog", width/2, altura13);
    fill(255, opacidad14);
    text("Compositor:", width/2, altura14);
    fill(255, opacidad15);
    text("Bear McCreary", width/2, altura15);

    //remapeo de la opciadad:
    opacidad1=map(altura1, 0, 550, 0, 255);
    opacidad2=map(altura2, 0, 550+170, 0, 255);
    opacidad3=map(altura3, 0, 550+320, 0, 255);
    opacidad4=map(altura4, 0, 550+470, 0, 255);
    opacidad5=map(altura5, 0, 550+500, 0, 255);
    opacidad6=map(altura6, 0, 550+550, 0, 255);
    opacidad7=map(altura7, 0, 550+620, 0, 255);
    opacidad8=map(altura8, 0, 550+720, 0, 255);
    opacidad9=map(altura9, 0, 550+550, 0, 255);
    opacidad10=map(altura10, 0, 550+800, 0, 255);
    opacidad11=map(altura11, 0, 550+830, 0, 255);
    opacidad12=map(altura12, 0, 550+870, 0, 255);
    opacidad13=map(altura13, 0, 550+930, 0, 255);
    opacidad14=map(altura14, 0, 550+1020, 0, 255);
    opacidad15=map(altura15, 0, 550+1050, 0, 255);

    botonPresionado1=false;
    botonPresionado2=false;
    image(boton3, width-ancho, alturaBoton-ancho, altoY, altoY); 
    botonPresionado3=true;
    teclaSi=false;
    cuenta++;
    image(logo, width/2, altura15+60, anchoX, alto);
    
  }

//uso de cuenta para reiniciar:
  if (cuenta>=4400) {
    pantalla=0;
    altura=550;
    altura1=1200;
    altura2=1200+170;
    altura3=1200+320;
    altura4=1200+470;
    altura5=1200+500; 
    altura6=1200+550; 
    altura7=1200+620;
    altura8=1200+720; 
    altura9=1200+750;
    altura10=1200+800; 
    altura11=1200+830;
    altura12=1200+870; 
    altura13=1200+930;
    altura14=1200+1020; 
    altura15=1200+1050;
    cuenta=0;
  }

//condicion para reiniciar:
  if ( botonPresionado3==true && distancia<=altoY/2 ) {
    pantalla=12;
    cuenta=0;
    altura=550;
    altura1=1200;
    altura2=1200+170;
    altura3=1200+320;
    altura4=1200+470;
    altura5=1200+500; 
    altura6=1200+550; 
    altura7=1200+620;
    altura8=1200+720; 
    altura9=1200+750;
    altura10=1200+800; 
    altura11=1200+830;
    altura12=1200+870; 
    altura13=1200+930;
    altura14=1200+1020; 
    altura15=1200+1050;
  } else {
    fill(255);
    tint(255);
    textSize(10);
  }

  println("cuenta= " + cuenta + " pantalla= " + pantalla );
}


void mousePressed() {
  //uso de variable distancia para poder medir la interaccion con el boton:

  //condicional para avanzar pantalla con el boton izquierdo:
  if (botonPresionado1==true && mouseX>=width-anchoX/2-altoY && mouseX<=width-anchoX/2+altoY && mouseY>=alto/2-altoY && mouseY<=alto/2+altoY) {
    pantalla--;
    botonPresionado1=!botonPresionado1;
    altura=550;
    altura1=1200;
    altura2=1200+170;
    altura3=1200+320;
    altura4=1200+470;
    altura5=1200+500; 
    altura6=1200+550; 
    altura7=1200+620;
    altura8=1200+720; 
    altura9=1200+750;
    altura10=1200+800; 
    altura11=1200+830;
    altura12=1200+870; 
    altura13=1200+930;
    altura14=1200+1020; 
    altura15=1200+1050;

    cuenta=0;
    cuenta2=0;
    alturaBoton=550;
  }


  //condicional para avanzar pantalla con el boton derecho:
  if (botonPresionado2==true && mouseX>=width-anchoX/2+ancho-altoY && mouseX<=width-anchoX/2+ancho+altoY && mouseY>=alto/2-altoY && mouseY<=alto/2+altoY) {
    pantalla++;
    botonPresionado2=!botonPresionado2;
    altura=550;
    altura1=1200;
    altura2=1200+170;
    altura3=1200+320;
    altura4=1200+470;
    altura5=1200+500; 
    altura6=1200+550; 
    altura7=1200+620;
    altura8=1200+720; 
    altura9=1200+750;
    altura10=1200+800; 
    altura11=1200+830;
    altura12=1200+870; 
    altura13=1200+930;
    altura14=1200+1020; 
    altura15=1200+1050;

    cuenta=0;
    alturaBoton=550;
  }


  //condicional para interaccion con el 3 boton:
  distancia=dist( width-ancho, alturaBoton-ancho, mouseX, mouseY);
  if (distancia<=altoY/2 && botonPresionado3==true) {
    pantalla=12;
    botonPresionado3=!botonPresionado3;
    altura=550;
    cuenta=0;
  }

  println(mouseX, mouseY);

  //condicional para interaccionon con el boton midgard e iniciar las pantallas:
  float distancia2=dist( width-alto, height-alto, mouseX, mouseY);
  if (distancia2<=alto/2 && botonMidgard==true) {
    pantalla=1;
    botonMidgard=!botonMidgard;
    altura=550;
  }

  // if(pantalla=0 && pantalla=1,
}


void keyPressed() {

  //condicion para reiniciar el programa:
  if (key=='r' || key=='R') {

    altura=550;
    altura1=1200;
    altura2=1200+170;
    altura3=1200+320;
    altura4=1200+470;
    altura5=1200+500; 
    altura6=1200+550; 
    altura7=1200+620;
    altura8=1200+720; 
    altura9=1200+750;
    altura10=1200+800; 
    altura11=1200+830;
    altura12=1200+870; 
    altura13=1200+930;
    altura14=1200+1020; 
    altura15=1200+1050;

    pantalla=0;
    cuenta=0;
  }

  //Codicionales para retroceder o avanzar pantallas usando la tecla izquierda o derecha:
  if (keyCode==LEFT && teclaSi==true) {
    pantalla--;

    altura=550;
    altura1=1200;
    altura2=1200+170;
    altura3=1200+320;
    altura4=1200+470;
    altura5=1200+500; 
    altura6=1200+550; 
    altura7=1200+620;
    altura8=1200+720; 
    altura9=1200+750;
    altura10=1200+800; 
    altura11=1200+830;
    altura12=1200+870; 
    altura13=1200+930;
    altura14=1200+1020; 
    altura15=1200+1050;
    cuenta=0;
  }
  if (keyCode==RIGHT && teclaSi==true) {
    pantalla++;

    altura=550;
    altura1=1200;
    altura2=1200+170;
    altura3=1200+320;
    altura4=1200+470;
    altura5=1200+500; 
    altura6=1200+550; 
    altura7=1200+620;
    altura8=1200+720; 
    altura9=1200+750;
    altura10=1200+800; 
    altura11=1200+830;
    altura12=1200+870; 
    altura13=1200+930;
    altura14=1200+1020; 
    altura15=1200+1050;
    cuenta=0;
  }
}
