/*Juan Santiago de Udaeta.
Legajo: 82545/1
Trabajo practico:Circulo cromatico.
Tecnologia multimedial 1.
Comision: 4.*/

PImage circuloCromatico;
void setup(){
  size(800,685);
 background(0);

//cargo la imagen del circulo cromatico:
circuloCromatico=loadImage("circulo-cromatico-1024x821.png");
//para poner que tipo de circulo cromatico es:
text("circulo cromatico:RGB", 50,50);
}

void mousePressed(){
 //para imprimir las cordenadas de "x" e "y" en la consola:
  println(mouseX,mouseY);
}


void draw(){
 
  pushStyle();
  imageMode(CENTER);
  image(circuloCromatico,711,73,150,150);
  popStyle();
  ellipseMode(CENTER);
 // 1° y 2° circulos de reborde blanco:
  fill(255);
  ellipse(400,345,600,600);
strokeWeight(5);
fill(255);
 ellipse(400,345,550,550);
  
  //circulo central negro:
  strokeWeight(1);
  fill(0);
  ellipse(400,350,500,500);
  
  //circulo color magenta:
  fill(207,52,118);
  ellipse(400,70,150,150);
 
  //circulo color ceruleo:
  fill(0,150,210);
  ellipse(672,365,150,150);

//circulo color verde:
fill(0,255,0);
ellipse(400,615,150,150);

//circulo color naranja:
fill(255,159,3);
ellipse(128,365,150,150);

//circulo color fucsia:
fill(255,0,128);
ellipse(251,115,120,120);

//circulo color rojo:
fill(255,0,0);
ellipse(164,218,120,120);

//circulo color violeta:
fill(76,40,130);
ellipse(554,115,120,120);

//circulo color azul:
fill(0,0,255);
ellipse(643,218,120,120);

//circulo color amarillo:
fill(255,255,0);
ellipse(168,500,120,120);

//circulo verde lima :
fill(191,255,0);
ellipse(260,586,120,120);

//circulo color verde cian:
fill(0,255,153);
ellipse(538,586,120,120);

//circulo color cian:
fill(0,255,255);
ellipse(632,500,120,120);



//triangulo de color rojo:
fill(255,0,0);
triangle(229,455,229,245,400,165);

//triangulo de color azul:
fill(0,0,255);
triangle(400,165,580,245,577,455);

//triangulo de color verde:
fill(0,255,0);
triangle(400,525,229,451,575,451);

//cudrilatero de color magenta:
fill(207,52,118);
quad(400,345,464,271,400,165,337,271);

//cuadrilatero de color amarillo:
fill(255,255,0);
quad(400,345,294,345,230,452,353,452);

//cuadrilatero color cian :
fill(0,255,255);
quad(576,452,510,345,400,345,449,452);

//circulos centrales:
fill(0);
ellipse(400,345,50,50);
fill(255);
ellipse(400,345,20,20);

}
