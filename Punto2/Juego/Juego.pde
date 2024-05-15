private Tablero tablero;
private Dado dado;

public void setup(){
  size (700,500);
  background (0);
  tablero = new Tablero(50,50);
  dado = new Dado(width/2,height/2);
}

public void draw(){
  tablero.display();
  dado.display();
  dado.mostrarValor();
  if(key=='d'){
    tablero.mostrarResultado();
  }
}

public void keyReleased(){
  if(key==' '){
    int valor = int(random(1, 7));
    dado.generarValor(valor);
    tablero.setValor(valor);
  }
}
