float colorcirc=255;
float colorcirc2=255;
float colorcirc3=255;
float colorazar=0;
float colorfondo = map(mouseX,0,width,0,500);
float colorrandom =random(0.0, 250.0);
float colorlineas=155;
int tamX = 20;
int tamY = 20;
int linX;
int linY;

void fondo() {
  noStroke();
  fill(colorazar);
  rect(0, 0, width, height);
}

void lineas(int posY, int posX ) {
  for ( int i=0; i<width; i+=56) {
    for (int y=0; y<height; y+=56) {
      stroke(colorlineas);
      strokeWeight(15);
      line(i+25, linY, i+25, posY);
      line(linX, y+25, posX, y+25);
    }
  }
}


void circulos() {
  for (int i=0; i<width; i+=56) {
    for (int y=0; y<height; y+=56) {
      noStroke();
      fill(colorcirc);
      ellipse(i+25, y+25, tamX, tamY);
    }
  }
}
