PFont fuente1, fuente2;
String titulo, textoUno, textoDos, textoTres;
float opacidad;
PImage imgUno, imgDos, imgTres, imgCuatro, imgCinco;
int posx, posy, posx4, duracion, numeracion, reinicio;
boolean boton = false;

void setup () {
  size(640, 480);
  titulo = "El Señor \nde los Anillos";
  textoUno = "Es una novela de fantasía épica \nescrita por el filólogo y escritor \nbritánico J.R.R. Tolkien.";
  textoDos = "Su historia se desarrolla en la Tercera Edad \ndel Sol de la Tierra Media, un lugar ficticio \npoblado por hombres y otras razas \nantropomorfas, como los hobbits, los elfos \no los enanos.";
  textoTres= "La novela narra el viaje del protagonista principal, \nFrodo Bolsón, hobbit de la Comarca, para destruir el \nAnillo Único y la consiguiente guerra que provocará \nel enemigo para recuperarlo, ya que es la principal \nfuente de poder de su creador, el señor oscuro Sauron.";
  fuente1 = loadFont ("Papyrus-Regular-48.vlw");
  //textFont(fuente1);
  fuente2 = loadFont("PoorRichard-Regular-48.vlw");
  opacidad= 0;
  imgUno = loadImage ("img1.jpg");
  imgDos = loadImage ("img2.jpg");
  imgTres = loadImage ("img3.jpg");
  imgCuatro = loadImage ("img4.jpg");
  imgCinco = loadImage ("img5.jpg");
  posx = 700;
  posy = 400;
  posx4 = 400;
  duracion = 400;
  numeracion = 0;
}

void draw () {
  if (frameCount < duracion) {
    numeracion = 0;
  } else if (frameCount < duracion * 2) {
    numeracion = 1;
  } else if (frameCount < duracion * 3) {
    numeracion = 2;
  } else {
    numeracion = 3;
  }

  if (numeracion == 0) {
    pantallaUno();
  } else if (numeracion == 1) {
    pantallaDos();
  } else if (numeracion == 2) {
    pantallaTres();
  } else {
    pantallaCuatro();
  }
}

void pantallaUno() {
  background(0);
  textFont(fuente1);
  textSize(48);
  background(0);
  fill (200, 150, 20, opacidad);
  text (titulo, 180, 220);
  opacidad = map(frameCount, 0, 350, 255, 0);
}

void pantallaDos () {
  image (imgUno, 0, 0);
  textSize (40);
  textFont (fuente2);
  float opacidad = map (posx, 0, 400, 255, 0);
  fill (0, opacidad);
  if (posx > 30) {
    posx = posx - 5;
  }
  text (textoUno, posx, 330);
}

void pantallaTres () {
  image (imgTres, 0, 0);
  textSize (33);
  float opacidad = map(posy, 0, 400, 255, 0);
  fill(0, opacidad);
  if (posy > 50) {
    posy = posy - 3;
  }
  text (textoDos, 90, posy);
}

void pantallaCuatro() {
  background (92, 162, 104);
  textSize(30);
  float opacidad = map (posx4, 0, 400, 255, 0);
  fill(0, opacidad);
  if (posx4 > 30) {
    posx4 = posx4 - 3;
  }
  text(textoTres, posx4, 50);
  image (imgDos, 50, 220, 180, 160);
  image (imgCuatro, 410, 220, 160, 160);
  image (imgCinco, 240, 220, 160, 100);
  fill (18, 49, 23);
  ellipse (320, 400, 80, 80);
  boton = true;
  textSize (15);
  fill (255);
  text ("REINICIO", 290, 405);
}

void mousePressed () {
  if (boton == true) {
    float distancia = dist (mouseX, mouseY, 320, 400);
    if (distancia < 40) { 
      frameCount = 0;
      posx = 700;
      posy = 400;
      posx4= 400;
      opacidad = 0;
      boton = false;
    }
  }
}
