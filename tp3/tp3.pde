// Brenda Ruiz
// Comisión 1 - obra nº8: "Acordes poco convencionales"
//

PImage img;
int cant = 10;
int cant2 = 40;
int tam, tam2;
boolean invertirColores = false;

void setup() {
  size(800, 400);
  img = loadImage ("ref.jpg");
  tam = height/cant;
  tam2 = height/ cant2;
}
void draw () {
  image (img, 0, 0, 400, 400);
  grilla (400, 0, cant, cant2, tam, tam2);
  grilla(480, 90, 24, 6, tam2, tam);
}

void mousePressed () {
  invertirColores = !invertirColores;
}
