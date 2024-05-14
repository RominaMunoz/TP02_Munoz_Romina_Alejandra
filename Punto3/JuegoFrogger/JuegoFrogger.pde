SpawnerAuto spawner;

public void setup(){
  size(700,600);
  spawner = new SpawnerAuto();
}

public void draw(){
  background(0);
  spawner.generarAuto();
  spawner.verAutos();
  spawner.moverAuto(random(5,10));
}
