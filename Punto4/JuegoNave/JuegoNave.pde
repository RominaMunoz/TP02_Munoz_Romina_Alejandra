private Nave nave;
private Asteroide[] roca;
private Enemigos[] alien;


public void setup(){
  size(900,650);
  nave= new Nave(new PVector (width/2, height/2), loadImage("nave.png"), new PVector(3,3));
  roca = new Asteroide[5];
  for (int i= 0; i < 4; i++){
    roca[i] = new Asteroide(new PVector(random(width), 0), loadImage("roca.png"), random(2,3));
  }
  alien = new Enemigos[6];
  for (int i= 0; i < 5; i++){
    alien[i] = new Enemigos(new PVector(random(width), 0), loadImage("enemigo.png"), random(1,2));
  }
}

public void draw(){
  background(0);
  for (int i= 0; i < 4; i++){
    roca[i].display();
    roca[i].mover();
  }
  for (int i= 0; i < 5; i++){
    alien[i].display();
    alien[i].mover();
  }
  nave.display();
  nave.mover();
  nave.readCommand();
}
