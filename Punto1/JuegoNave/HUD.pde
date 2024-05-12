class HUD{
  
  private int cantVida;
  //Método mostrarVida implementado para mostrar la cantidad de vidas que tiene la nave
  public void mostrarVida(int vida){
    this.cantVida = vida;
    fill(255);
    textAlign(CENTER);
    textSize(20);
    text("Vidas: " + cantVida, width/2, 20);
  }
  
}
