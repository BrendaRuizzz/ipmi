PImage img;
void setup () {
  size (800, 400);
  img = loadImage ("kenny.jpg");
}
  
void draw () {
  // fondo 
  noStroke ();
  fill (105, 83, 65);
  rect (400, 0, 400, 152);
  fill (138, 111, 75);
  noStroke();
  strokeWeight (3);
  rect (400,152, 400, 248);
  noStroke ();
  fill (80, 60, 45);
  rect (400, 152, 400, 35);
  fill (108, 84, 51);
  rect (400, 213, 400, 49);
  stroke (52, 37, 25);
  line (400, 152, 800, 152);
  
  // imagen de referencia
  image (img, 0, 0, 400, 400);
  
  // piernas 
  strokeWeight (1);
  stroke (175, 56, 0);
  fill (211, 85, 35);
  rect (531, 340, 142, 22); 
  
  // brazos
  stroke (211, 85, 35);
  strokeWeight (30);
  line (673, 261, 691, 310);  // derecho
  line (530, 258, 489, 291);  // izquierdo
  
  // cuerpo
  strokeWeight (1);
  stroke (211, 85, 35);
  fill (211, 85, 35);
  rect (522, 257, 158, 85); 
  fill (211, 85, 35);
  stroke (175, 56, 0);
  strokeWeight (2);
  bezier(522.0,342.0,528.0,353.0,667.0,353.0,680.0,343.0); // borde de la ropa
  strokeWeight (1);
  stroke (0);
  line (672, 289, 678, 313);
  line (604, 288, 604, 347);
  
  // capucha
  strokeWeight (2);
  stroke (175, 56, 0);
  fill (211, 85, 35);
  ellipse (600, 168, 235, 240);
  strokeWeight (1);
  stroke (0);
  noFill();
  ellipse (600, 175, 170, 150); //linea de la capucha
  stroke (77, 40, 9);
  fill (72, 35, 18);
  ellipse (600, 166, 158, 134); //borde marrón
  stroke (0);
  noFill();
  bezier(600.0,232.0,614.0,241.0,604.0,268.0,612.0,274.0); // cordones
  bezier(600.0,232.0,593.0,245.0,594.0,256.0,592.0,266.0);
  
  // rostro
  stroke (247, 216, 185);
  fill (247, 216, 185);
  bezier(600.0,103.0,675.0,136.0,652.0,211.0,600.0,230.0); 
  bezier(600.0,103.0,515.0,147.0,554.0,210.0,600.0,230.0); 
  
  // zapatos
  stroke (31, 14, 0);
  strokeWeight (6);
  line (525, 365, 677, 365);
  
  // mano derecha
  fill (72, 35, 18);
  stroke (39, 23, 7);
  strokeWeight (1);
  ellipse (697, 324, 38, 38); 
  ellipse (681, 318, 16, 16); 
  
  // pulgar de la mano izquierda
  stroke (39, 23, 7);
  fill (77, 40, 9);
  stroke (39, 23, 7);
  ellipse (486, 282, 16, 16); 
  
  // caja de jugo
  stroke (84, 155, 126);
  fill (125, 190, 135);
  rect (492, 260, 45, 70); 
  stroke (255);
  strokeWeight (2);
  line (530, 225, 530, 260);
  line (530, 225, 543, 223);
  noStroke();
  fill (211, 38, 38);
  ellipse (509, 309, 24, 24);
  
  // mano izquierda
  stroke (39, 23, 7);
  strokeWeight (1);
  fill (72, 35, 18);
  ellipse (486, 298, 38, 38); 
  
  // ojos
  stroke (255);
  fill (255);
  bezier(565.0,130.0,617.0,118.0,605.0,198.0,560.0,197.0);
  bezier(565.0,130.0,549.0,144.0,546.0,181.0,560.0,197.0); // ojo izquierdo
  bezier(633.0,130.0,584.0,114.0,589.0,196.0,638.0,198.0);
  bezier(633.0,130.0,654.0,139.0,649.0,189.0,638.0,198.0); // ojo derecho
  fill (0);
  ellipse (590, 165, 8, 8);
  ellipse (640, 165, 8, 8);



  println ("x: ");
  println (mouseX);
  println ("y: ");
  println (mouseY);
  


}
