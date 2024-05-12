class Shooter extends GameObject{
  
  private PVector velocidad;
  //Define la velocidad, la posición y carga la imagen de la nave
  public Shooter(float x, float y, PImage img, PVector velocidad) {
    super(x, y, img);
    this.velocidad = velocidad;
  }
  
  //Método display implementado para mostrar la nave
  public void display() {
    imageMode(CENTER);
    image(imagen, posicion.x, posicion.y, 90, 90);
  }
  
  //Método mover implementado para cumplir con la herencia de GameObject
  public void mover(){
  }
  
  //Método moverNave implementado para lograr que la nave se mueva
  public void moverNave(int direccion){
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
