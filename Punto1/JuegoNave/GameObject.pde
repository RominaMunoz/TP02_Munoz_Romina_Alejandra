abstract class GameObject {
  protected PVector posicion;
  protected PImage imagen;
  
  //Posición y carga de imagen que heredarán el Shooter y los Asteroides
  public GameObject(float x, float y, PImage img) {
    posicion = new PVector(x, y);
    imagen = img;
  }
  
  //Metodo display y mover que heredarán el Shooter y los Asteroides
  public abstract void display();
  public abstract void mover();
}
