class Asteroide extends GameObject {
  
  private PVector velocidad;
  //Define la velocidad, la posición y carga la imagen de el asteroide
  public Asteroide(float x, float y, PImage img, PVector velocidad){
    super(x, y, img);
    this.velocidad = velocidad;
  }
  
  //Método display implementado para mostrar los asteroides
  public void display(){
    imageMode(CENTER);
    image(imagen, posicion.x, posicion.y, 30, 30);
  }
  
  //Método mover implementado para que el asteroide al llegar al borde de la pantalla vuelva a su punto inicial
  public void mover(){
    if(this.posicion.y<=height){
      this.posicion.y+=this.velocidad.y;
    }else{
      this.posicion.y=0;
    }
  }
}
