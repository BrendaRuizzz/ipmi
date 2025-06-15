void grilla (int x, int y, int cant, int cant2, int tam, int tam2) {
  for (int i= 0; i < cant; i++) {
    for (int j = 0; j < cant2; j++) {
      float centroX = x+i*tam + tam / 2;
      float centroY = y+j*tam2 + tam2 / 2;

      float distancia = dist(mouseX, mouseY, centroX, centroY);
      float angulo = 0;
      float distMax = 150;
      int zero = 0;

      // determino que al pasar el mouse sobre el rectangulo, gira 180 grados
      if (distancia < distMax) {
        angulo = map(distancia, zero, distMax, PI, zero);
      }

      push();
      translate(centroX, centroY);
      rotate(angulo);
      // los rectangulos se pintan de rojo si el mouse está muy cerca
      if (distancia < 20) {
        fill(255, 0, 0);
      } else {
        // el resto de rectangulos mantienen el patrón blanco y negro
        if (parImpar(i, j)) {
          if (invertirColores) {
            fill(0);
          } else {
            fill(255);
          }
        } else {
          if (invertirColores) {
            fill(255);
          } else {
            fill(0);
          }
        }
      }
      rectMode(CENTER);
      rect(zero, zero, tam, tam2);
      pop();
    }
  }
}

boolean parImpar (int num1, int num2) {
  if ((num1 + num2)% 2 == 0) {
    return true;
  } else {
    return false;
  }
}
