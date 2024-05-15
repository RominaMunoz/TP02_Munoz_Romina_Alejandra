class Tablero extends GameObject{
  
  private Dado[] dado;
  private int valor;
  
  public Tablero(float x, float y){
    super(x,y);
    dado= new Dado[40];
  }
  
  public void display(){
    fill(#7600FF);
    rectMode(CORNER);
    rect(posicion.x, posicion.y, (width-100), (height-100));
  }
  
  public void mostrarResultado(){
    fill(255);
    rectMode(CORNER);
    rect(posicion.x, posicion.y, (width-100), (height-100));
    for(int l=150; l<width-100; l+=150){
      stroke(3);
      line(posicion.x+l, posicion.y, posicion.x+l, posicion.y+400);
    }
    
    for(int i = 0; i < dado.length; i++){
      dado[i]= new Dado(i*(posicion.x+75)/5, posicion.y+60);
      if (posicion.x > 525){
        posicion.y += 40;
      }
    }
    for(int i = 0; i < dado.length; i++){
      if (dado[i] != null) {
        dado[i].mostrarValor();
      }
    }
  }
  
  public void setValor(int valor) {
    for(int i = 0; i < dado.length; i++){
      if (dado[i] != null) {
        dado[i] = new Dado(posicion.x + i * 30, posicion.y + 60);
      }
      dado[i].generarValor(valor);
    }
  }
}
