PImage pantalla0img, pantalla1img, pantalla2img, pantalla3img;

int colorboton;
int posYpantalla1;
int posXpantalla2;
int tamanoText2;
int transparenciaboton;


PFont fuente;
PFont fuenteTitle;

boolean screen0, screen1, screen2, screen3 = false;
void setup() {
  size(640, 480);

  transparenciaboton=0;
  tamanoText2 = 1;
  posYpantalla1 = -100;
  posXpantalla2 = 25;

  pantalla0img = loadImage("1.jpg");
  pantalla1img = loadImage("2.jpg");
  pantalla2img = loadImage("3.jpg");
  pantalla3img = loadImage("4.jpg");

  fuente = createFont("Roboto-Regular.ttf", 35);
  fuenteTitle = createFont("Comme-Medium.ttf", 35);

  colorboton = 255;
}



void draw() {


  background(18010);
  pantalla0img.resize(640, 480);
  image(pantalla0img, 0, 0);
  textFont(fuenteTitle);
  fill(0);
  text("Dagon", 470, 100);
  botonInicio();




  if (posXpantalla2 == 700) {
    posXpantalla2--;
    tamanoText2=31;
    screen3 = true;
    screen2 = false;
    screen1 = false;
    screen0 = false;
  }
  if (posYpantalla1 == 550) {
    posYpantalla1--;
    screen2 = true;
    screen1 = false;
    screen0 = false;
  }
  if ( tamanoText2 == 30) {
    tamanoText2--;
    posXpantalla2++;
    screen2 = true;
    screen1 = false;
    screen0 = false;
  }


  if (screen3) {
    pantalla3();
    transparenciaboton++;
  }
  if (screen2) {
    pantalla2();
    tamanoText2++;
  }

  if (screen1) {
    pantalla1();      
    posYpantalla1++;
  }
}


void mouseMoved() {
  if (mouseX >= 50 && mouseY >= 50 && mouseX <= 250 && mouseY <=120) {
    colorboton = 140;
  } else {
    colorboton = 255;
  }
}

void keyPressed() {
  if (key == 'r' && screen3 == true) {
    pantalla1();
    screen1 = false;
    screen2 = false; 
    screen3 = false;
    posYpantalla1 = -100;
    posXpantalla2 = 25;
    tamanoText2 = 1;
    transparenciaboton=0;
  }
}

void mouseClicked() {
  if (mouseX >= 50 && mouseY >= 50 && mouseX <= 250 && mouseY <=120) {
    screen1 = true;
  }
}
