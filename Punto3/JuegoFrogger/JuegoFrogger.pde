Auto auto;

public void setup(){
  size(700,600);
  auto = new Auto(0, height/2, 3);
}

public void draw(){
  background(0);
  auto.display();
  auto.mover();
}
