abstract class GameObject implements IDisplayable, IMoveable{
  protected PVector posicion;
  protected PImage img;
  
  public GameObject(PVector posicion, PImage img) {
    this.posicion = posicion;
    this.img = img;
  }
  
  public abstract void display();
  public abstract void mover();
}
