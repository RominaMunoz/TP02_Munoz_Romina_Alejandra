class Balas extends GameObject {
  
  private int velocidad;
  
  public Balas (PVector posicion){
    super(posicion);
    velocidad= 3;
  }
  
  public void display(){
    fill(#A6B7D3);
    ellipse(posicion.x, posicion.y, 10, 10);
  }
  
  public void mover(){
    this.posicion.y-=this.velocidad;
  }
}
