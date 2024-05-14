class Rana extends GameObject{
  
  private PImage img;
  private PVector velocidad;
  
  public Rana(int x, int y, PImage img, PVector velocidad){
    super(x,y);
    this.img= img;
    this.velocidad=velocidad;
  }
  
   public void display(){
    imageMode(CENTER);
    image(img, posicion.x, posicion.y, 50, 50);
  }

  public void mover(int direccion){
    switch(direccion){
      case 1:{
        this.posicion.y -= this.velocidad.y;
        break;
      }
      case 2:{
        this.posicion.y += this.velocidad.y;
        break;
      }
      case 3:{
        this.posicion.x -= this.velocidad.x;
        break;
      }
      case 4:{
        this.posicion.x += this.velocidad.x;
        break;
      }
    }
  }
}
