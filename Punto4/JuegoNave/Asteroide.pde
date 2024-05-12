class Asteroide extends GameObject implements IMoveable {
  
  private float velocidad;
  
  public Asteroide(PVector posicion, PImage img, float velocidad){
    super(posicion, img);
    this.velocidad = velocidad;
  }
  
  public void display(){
    imageMode(CENTER);
    image(img, posicion.x, posicion.y, 30, 30);
  }
  
  public void mover(){
    if(this.posicion.y<=height){
      this.posicion.y+=this.velocidad;
    }else{
      this.posicion.y=0;
    }
  }
}
