class Tablero extends GameObject{
  
  private Dado[] dado;
  private int[] valGenerados;
  private int valor;
  
  public Tablero(float x, float y){
    super(x,y);
    dado= new Dado[40];
    valGenerados = new int[40];
    for (int i = 0; i < dado.length; i++) {
      dado[i] = new Dado(posicion.x+(i/10)*150, posicion.y+(i%10)*35);
      valGenerados[i] = 0;
    }
    this.valor = 0;
  }
  
  public void display(){
    fill(255);
    rectMode(CORNER);
    rect(posicion.x, posicion.y, (width-100), (height-100));
    for(int l=150; l<width-100; l+=150){
      stroke(3);
      line(posicion.x+l, posicion.y, posicion.x+l, posicion.y+400);
    }
  }
  
  public void mostrarResultado(){
    for (int i = 0; i < valGenerados.length; i++){
      if (valGenerados[i] != 0) {
        textAlign(CENTER, CENTER);
        textSize(20);
        fill(0);
        text(valGenerados[i], posicion.x + (i/10) * 150 + 75, posicion.y + (i % 10) * 35 + 40);
      }
    }
  }
  
  public void setValor(int valor) {
    if (this.valor < dado.length) {
      dado[this.valor].generarValor(valor);
      valGenerados[this.valor]= valor;
      this.valor++;
    }
  }
}
