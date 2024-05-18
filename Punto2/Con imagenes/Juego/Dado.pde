class Dado extends GameObject{
  
  private int valor;
  private String numero;
  private PImage[] dadoImg;
  
  public Dado(float x, float y){
    super(x,y);
    this.valor=1;
    this.numero="uno";
    dadoImg= new PImage[6];
    for (int i = 0; i < dadoImg.length; i++) {
      dadoImg[i] = loadImage("DADO_"+i+".png");
    }
  }
  
  
  public void generarValor(int valor){
    this.valor= valor;
  }
  
  public void display(){
    fill(#7600FF);
    rectMode(CENTER);
    rect(posicion.x, posicion.y, (width-100), (height-100));
    imageMode(CENTER);
    switch(valor){
      case 1:{
        image(dadoImg[0], posicion.x, posicion.y, 100, 100);
        break;
      }
      case 2:{
        image(dadoImg[1], posicion.x, posicion.y, 100, 100);
        break;
      }
      case 3:{
        image(dadoImg[2], posicion.x, posicion.y, 100, 100);
        break;
      }
      case 4:{
        image(dadoImg[3], posicion.x, posicion.y, 100, 100);
        break;
      }
      case 5:{
        image(dadoImg[4], posicion.x, posicion.y, 100, 100);
        break;
      }
      case 6:{
        image(dadoImg[5], posicion.x, posicion.y, 100, 100);
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
