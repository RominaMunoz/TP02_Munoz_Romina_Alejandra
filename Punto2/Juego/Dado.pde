class Dado extends GameObject{
  
  private int valor;
  private String numero; 
  
  public Dado(float x, float y){
    super(x,y);
    this.valor=1;
    this.numero="uno";
  }
  
  
  public void generarValor(int valor){
    this.valor= valor;
  }
  
  public void display(){
    fill(#7600FF);
    rectMode(CENTER);
    rect(posicion.x, posicion.y, (width-100), (height-100));
    fill(#E462FF);
    rect(posicion.x, posicion.y, 150, 150);
    fill(#2A0050);
    switch(valor){
      case 1:{
        ellipse(posicion.x, posicion.y, 30, 30);
        break;
      }
      case 2:{
        ellipse(posicion.x-50, posicion.y, 30, 30);
        ellipse(posicion.x+50, posicion.y, 30, 30);
        break;
      }
      case 3:{
        ellipse(posicion.x-50, posicion.y-50, 30, 30);
        ellipse(posicion.x, posicion.y, 30, 30);
        ellipse(posicion.x+50, posicion.y+50, 30, 30);
        break;
      }
      case 4:{
        ellipse(posicion.x-50, posicion.y-50, 30, 30);
        ellipse(posicion.x-50, posicion.y+50, 30, 30);
        ellipse(posicion.x+50, posicion.y-50, 30, 30);
        ellipse(posicion.x+50, posicion.y+50, 30, 30);

        break;
      }
      case 5:{
        ellipse(posicion.x-50, posicion.y-50, 30, 30);
        ellipse(posicion.x-50, posicion.y+50, 30, 30);
        ellipse(posicion.x+50, posicion.y-50, 30, 30);
        ellipse(posicion.x+50, posicion.y+50, 30, 30);
        ellipse(posicion.x, posicion.y, 30, 30);
        break;
      }
      case 6:{
        ellipse(posicion.x, posicion.y-50, 30, 30);
        ellipse(posicion.x, posicion.y+50, 30, 30);
        ellipse(posicion.x+50, posicion.y-50, 30, 30);
        ellipse(posicion.x-50, posicion.y-50, 30, 30);
        ellipse(posicion.x+50, posicion.y+50, 30, 30);
        ellipse(posicion.x-50, posicion.y+50, 30, 30);
        break;
      }
    }
  }
  
  public void mostrarValor(){
    fill(0);
    textSize(30);
    text(numero, posicion.x+150, posicion.y-150);
    switch(valor){
      case 1:{
        this.numero= "uno";
        break;
      }
      case 2:{
        this.numero= "dos";
        break;
      }
      case 3:{
        this.numero= "tres";
        break;
      }
      case 4:{
        this.numero= "cuatro";
        break;
      }
      case 5:{
        this.numero= "cinco";
        break;
      }
      case 6:{
        this.numero= "seis";
        break;
      }
    }
  }
  
  public int getValor(){
    return this.valor;
  }
}
