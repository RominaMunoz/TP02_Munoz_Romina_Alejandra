class Nave extends GameObject implements IControler{
  
  private PVector velocidad;
  private int direccion;

  public Nave(PVector posicion, PImage img, PVector velocidad) {
    super (posicion, img);
    this.velocidad = velocidad;
  }
  
  public void display(){
    imageMode(CENTER);
    image(img, posicion.x, posicion.y, 90, 90);
  }
  
  public void mover(){
    switch(direccion){
      case 1:{
        if (posicion.y>0){
        this.posicion.y -= this.velocidad.y;
        }
        break;
      }
      case 2:{
        if (posicion.y<height){
        this.posicion.y += this.velocidad.y;
        }
        break;
      }
      case 3:{
        if (posicion.x>0){
        this.posicion.x -= this.velocidad.x;
        }
        break;
      }
      case 4:{
        if (posicion.x<width){
        this.posicion.x += this.velocidad.x;
        }
        break;
      }
    }
  }
  
  public void readCommand(){
    if (keyPressed){
      if(key == UP || key == 'w'){
        direccion = 1;
      }
      if(key == DOWN || key == 's'){
        direccion = 2;
      }
      if(key == LEFT || key == 'a'){
        direccion = 3;
      }
      if(key == RIGHT || key == 'd'){
        direccion = 4;
      }
    }
  }
}
