class Tablero extends GameObject{
  
  public Tablero(float x, float y){
    super(x,y);
  }
  
  public void display(){
    rectMode(CORNER);
    rect(posicion.x, posicion.y, (width-100), (height-100));
    fill(#7600FF);
  }
  
  public void mostrarValorDado(){
    
  }
  
}
