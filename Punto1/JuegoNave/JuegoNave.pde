private Shooter nave;
private HUD vida;
//Array implementado para mostrar varios asteroides
private Asteroide[] roca;
private JoyPad control;

public void setup(){
  size(700, 600);
  nave = new Shooter(width/2, height/2, loadImage("nave.png"), new PVector(5,5));
  vida= new HUD();
  roca = new Asteroide[5];
  //Bucle de array implementado para poner los valores del asteroide y que estos se repitan indefinidamente
  for (int i= 0; i < 4; i++){
    roca[i] = new Asteroide(random(width), 0, loadImage("roca.png"), new PVector(random(3),random(3)));
  }
  control = new JoyPad();
}

public void draw(){
  background(0);
  //Bucle de array implementado para mostrar los asteroides
  for (int i= 0; i < 4; i++){
    roca[i].display();
    roca[i].mover();
  }
  nave.display();
  //Funcion If implementado para que se pueda mover la nave de la nave
  if (control.isArribaPressed()){
    nave.moverNave(1);
  }
  if (control.isAbajoPressed()){
    nave.moverNave(2);
  }
  if (control.isIzquierdaPressed()){
    nave.moverNave(3);
  }
  if (control.isDerechaPressed()){
    nave.moverNave(4);
  }
  vida.mostrarVida(4);
}

//keyPressed y keyReleased para que la nave se pueda mover presionando las teclas w, s, d, a o up, down, left, right.

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
