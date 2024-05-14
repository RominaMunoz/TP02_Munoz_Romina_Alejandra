class SpawnerAuto{
  private Auto[] auto;
  
  public SpawnerAuto(){
    auto= new Auto[6];
  }
  public void generarAuto(){
    for(int i = 0; i < auto.length; i++){
      auto[i]= new Auto(0, i*height/5);
    }
  }
  
  public void verAutos(){
    for(Auto a:auto){
      if(a != null){
        a.display();
      }
    }
  }
  
  public void moverAuto(float direccion){
    for(Auto a:auto){
      if(a != null){
        a.mover(direccion);
      }
    }
  }
}
