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
}

public void keyPressed(){
  if(key==' '){
    dado.generarValor(int(random(1,6)));
  }
}
