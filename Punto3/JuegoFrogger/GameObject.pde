abstract class GameObject{
  private PVector posicion;
  private PImage img;
  
  public GameObject(int x, int y, PImage img){
    this.posicion= new PVector(x,y);
    this.img= img;
  }
  
  public abstract void display();
}
