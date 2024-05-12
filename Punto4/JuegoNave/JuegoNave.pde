private Nave nave;

public void setup(){
  size(700,600);
  nave= new Nave(new PVector (width/2, height/2), loadImage("nave.png"), new PVector(5,5));
}

public void draw(){
  background(0);
  nave.display();
  nave.mover();
  nave.readCommand();
}
