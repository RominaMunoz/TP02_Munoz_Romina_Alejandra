class JoyPad{
  private boolean arribaPressed;
  private boolean abajoPressed;
  private boolean izquierdaPressed;
  private boolean derechaPressed;
  
  public boolean isArribaPressed(){
    return this.arribaPressed;
  }
  
  public void setArribaPressed(boolean arribaPressed){
    this.arribaPressed = arribaPressed;
  }
  
  public boolean isAbajoPressed(){
    return this.abajoPressed;
  }
  
  public void setAbajoPressed(boolean abajoPressed){
    this.abajoPressed = abajoPressed;
  }
  
  public boolean isIzquierdaPressed(){
    return this.izquierdaPressed;
  }
  
  public void setIzquierdaPressed(boolean izquierdaPressed){
    this.izquierdaPressed = izquierdaPressed;
  }
  
  public boolean isDerechaPressed(){
    return this.derechaPressed;
  }
  
  public void setDerechaPressed(boolean derechaPressed){
    this.derechaPressed = derechaPressed;
  }
}
