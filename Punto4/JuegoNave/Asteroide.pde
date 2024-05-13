class Asteroide extends GameObject {
  
  private float velocidad;
  private PImage img;
  
  public Asteroide(PVector posicion, PImage img, float velocidad){
    super(posicion);
    this.velocidad = velocidad;
    this.img = img;
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
