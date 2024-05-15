class Dado extends GameObject{
  
  private int valor;
  
  public Dado(float x, float y){
    super(x,y);
  }
  
  
  public void generarValor(int valor){
    this.valor= valor;
  }
  
  public void display(){
    rectMode(CENTER);
    rect(posicion.x, posicion.y, 150, 150);
    fill(#E462FF);
    switch(valor){
      case 1:{
        ellipse(posicion.x, posicion.y, 30, 30);
        fill(#2A0050);
        break;
      }
      case 2:{
        ellipse(posicion.x-50, posicion.y, 30, 30);
        ellipse(posicion.x+50, posicion.y, 30, 30);
        fill(#2A0050);
        break;
      }
      case 3:{
        ellipse(posicion.x-50, posicion.y-50, 30, 30);
        ellipse(posicion.x, posicion.y, 30, 30);
        ellipse(posicion.x+50, posicion.y+50, 30, 30);
        fill(#2A0050);
        break;
      }
      case 4:{
        ellipse(posicion.x-50, posicion.y-50, 30, 30);
        ellipse(posicion.x-50, posicion.y+50, 30, 30);
        ellipse(posicion.x+50, posicion.y-50, 30, 30);
        ellipse(posicion.x+50, posicion.y+50, 30, 30);
        fill(#2A0050);
        break;
      }
      case 5:{
        ellipse(posicion.x-50, posicion.y-50, 30, 30);
        ellipse(posicion.x-50, posicion.y+50, 30, 30);
        ellipse(posicion.x+50, posicion.y-50, 30, 30);
        ellipse(posicion.x+50, posicion.y+50, 30, 30);
        ellipse(posicion.x, posicion.y, 30, 30);
        fill(#2A0050);
        break;
      }
      case 6:{
        ellipse(posicion.x, posicion.y-50, 30, 30);
        ellipse(posicion.x, posicion.y+50, 30, 30);
        ellipse(posicion.x+50, posicion.y-50, 30, 30);
        ellipse(posicion.x-50, posicion.y-50, 30, 30);
        ellipse(posicion.x+50, posicion.y+50, 30, 30);
        ellipse(posicion.x-50, posicion.y+50, 30, 30);
        fill(#2A0050);
        break;
      }
    }
  }
}
