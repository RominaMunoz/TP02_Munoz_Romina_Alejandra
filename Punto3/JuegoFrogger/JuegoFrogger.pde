SpawnerAuto spawner;
JoyPad control;
Rana rana;

public void setup(){
  size(700,600);
  spawner = new SpawnerAuto();
  control = new JoyPad();
  rana = new Rana(width/2, height, loadImage("rana.png"), new PVector(5,5));
  spawner.generarAuto();
}

public void draw(){
  background(0);
  rana.display();
  if (control.isArribaPressed()){
    rana.mover(1);
  }
  if (control.isAbajoPressed()){
    rana.mover(2);
  }
  if (control.isIzquierdaPressed()){
    rana.mover(3);
  }
  if (control.isDerechaPressed()){
    rana.mover(4);
  }
  spawner.verAutos();
  spawner.moverAuto(random(1,5));
}

public void keyPressed(){
  if(key == UP || key == 'w'){
    control.setArribaPressed(true);
  }
  if(key == DOWN || key == 's'){
    control.setAbajoPressed(true);
  }
  if(key == LEFT || key == 'a'){
    control.setIzquierdaPressed(true);
  }
  if(key == RIGHT || key == 'd'){
    control.setDerechaPressed(true);
  }
}

public void keyReleased(){
  if(key == UP || key == 'w'){
    control.setArribaPressed(false);
  }
  if(key == DOWN || key == 's'){
    control.setAbajoPressed(false);
  }
  if(key == LEFT || key == 'a'){
    control.setIzquierdaPressed(false);
  }
  if(key == RIGHT || key == 'd'){
    control.setDerechaPressed(false);
  }
}
