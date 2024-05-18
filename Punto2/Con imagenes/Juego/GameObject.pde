abstract class GameObject{
  
  protected PVector posicion;
  
  public GameObject(float x, float y){
    posicion= new PVector(x,y);
  }
  
  public abstract void display();
  
}
