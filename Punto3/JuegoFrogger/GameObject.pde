abstract class GameObject{
  protected PVector posicion;
  
  public GameObject(int x, int y){
    this.posicion= new PVector(x,y);
  }
  
  public abstract void display();
}
