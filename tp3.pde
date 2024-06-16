//https://www.youtube.com/watch?v=zV_FxT7rfFQ

void setup() {
  size(490, 490);
}
void draw() {
  if (key == CODED) {
    if (keyCode == UP) {
      colorrandom = random(0, 255);
      colorazar= colorrandom;
      colorcirc = random(0, 50);
    }
    if (keyCode == RIGHT) {

      colorazar--;
      colorcirc++;
    }
    if (keyCode == LEFT) {

      colorazar++;
      colorcirc--;
    }
  } else {
    if (keyCode == DOWN) {
      colorazar= 0;
    }
  }


  fondo();
  lineas(500, 500);
  circulos();

  if (mousePressed) {
    if (colorcirc<=0 && mouseX>=width/2 && mouseY>=height/2) {
      tamX ++;
      tamY ++;
    } else {
      if (colorcirc<=0 && mouseX<=width/2 && mouseY<=height/2) {
        tamX --;
        tamY --;
      }
    }
  }
  if (tamY <= 1 && tamX<=1) {
    tamY=0;
    tamX=0;
  }
  if (tamY<=0 && tamX<=0) {
    linX++;
    linY++;
  }
}
void keyPressed() {
  if (keyPressed) {
    if (key == 'r') {
      tamX = 20;
      tamY = 20;
      colorcirc=255; 
      colorcirc2=255;
      colorcirc3=255;
      colorlineas=155;
      colorazar=0;

      linX=0;
      linY=0;
    }
  }
}
