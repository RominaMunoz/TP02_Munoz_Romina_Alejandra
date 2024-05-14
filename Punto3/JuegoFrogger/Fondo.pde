class Fondo extends GameObject{
  
  private PImage img;
  
  public Fondo(int x, int y, PImage img){
    super(x,y);
    this.img= img;
  }
  
  public void display(){
    image(img, posicion.x, posicion.y, width, height);
  }
}
