class Paleta {
  PVector pos;    //Posicion
  PVector con;    //Controles.
  int puntaje = 0;
  
  Paleta(float x, float y) {
    pos = new PVector(x, y);
  }

  void mostrar() {
    fill(#FFFFFF);
    rect(pos.x, pos.y, width/35, height/6.5);
  }

  void mover(){
  }
}
