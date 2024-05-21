void botonInicio() {
  strokeWeight(5);
  fill(0);
  rect(50, 50, 200, 70); 
  textFont(fuente);
  fill(colorboton);
  text("Iniciar", 100, 100);
}

void pantalla0() {

  background(18010);
  pantalla0img.resize(640, 480);
  image(pantalla0img, 0, 0);
  textFont(fuenteTitle);
  fill(0);
  text("Fat Boy", 570, 100);
  botonInicio();
}

void pantalla1() {  

  textFont(fuente);
  textSize(23);
  pantalla1img.resize(640, 480);  
  image(pantalla1img, 0, 0);
  fill(255);
  text("Dagón (Dagon en inglés) es un relato de H. P. Lovecraft. \nEscrito en julio de 1917, es una de las primeras historias \nque escribió como adulto. Fue publicado por primera vez \nen noviembre de 1919 en The Vagrant.", 15, posYpantalla1);
}

void pantalla2() {  
  textFont(fuente);
  pantalla2img.resize(640, 480);
  image(pantalla2img, 0, 0);
  fill(255);
  textSize(tamanoText2);
  text("El narrador-protagonista cuenta una oscura \nvivencia. Destaca la desdibujada \ndescripción que este hace del dios Dagón, \nsu persecutor.", posXpantalla2, 150);
}

void pantalla3() {  
  textFont(fuente);
  pantalla3img.resize(640, 480);
  image(pantalla3img, 0, 0);
  fill(255, 255, 255, transparenciaboton);
  textSize(21);
  text("I dream of a day when they may rise above the billows \nto drag down in their reeking talons the remnants of \npuny, war-exhausted mankind—of a day when the land \nshall sink, and the dark ocean floor shall ascend amidst \nuniversal pandemonium.", 24, 340);  
  botonReinicio();
}

void botonReinicio() {
  strokeWeight(5);
  fill(255);
  rect(480, 40, 100, 50);
  fill(0);
  textSize(30);
  strokeWeight(10);
  text('R', 520, 75);
}
