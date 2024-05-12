private Nave nave;
private Asteroide[] roca;


public void setup(){
  size(700,600);
  nave= new Nave(new PVector (width/2, height/2), loadImage("nave.png"), new PVector(3,3));
  roca = new Asteroide[5];
  for (int i= 0; i < 4; i++){
    roca[i] = new Asteroide(new PVector(random(50,width), 0), loadImage("roca.png"), random(2,3));
  }
}

public void draw(){
  background(0);
  
  for (int i= 0; i < 4; i++){
    roca[i].display();
    roca[i].mover();
  }
  
  nave.display();
  nave.mover();
  nave.readCommand();
}
