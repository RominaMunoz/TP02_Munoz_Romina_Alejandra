class Auto extends GameObject{
  
  private float velocidad;
  private int dist= 10;
  
  public Auto(int x, int y){
    super(x,y);
  }
  
  public void display(){
    rectMode(CENTER);
    //ruedas
    fill(#7C7C7C);
    rect(posicion.x+dist, posicion.y+dist, 15, 10, 2);
    rect(posicion.x-dist, posicion.y+dist, 15, 10, 2);
    rect(posicion.x-dist, posicion.y-dist, 15, 10, 2);
    rect(posicion.x+dist, posicion.y-dist, 15, 10, 2);
    //auto
    fill(#FC0000);
    rect(posicion.x, posicion.y, 40, 20, 5);
    //ventanas
    fill(#00D9FC);
    rect(posicion.x+dist, posicion.y, 10, 10, 3);
    rect(posicion.x-dist, posicion.y, 10, 10, 3);
  }
  
  public void mover(float direccion){
    this.velocidad= direccion;
    posicion.x += this.velocidad;
    if(posicion.x>width){
      posicion.x=0;
    }
  }
}
