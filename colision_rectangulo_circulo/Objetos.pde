class Movil{
  PVector vel;  //Velocidad.
  PVector pos;  //Posicion.
  int r = 10;
  
  Movil(float px, float py, float vx, float vy){
  pos = new PVector(px, py);
  vel = new PVector(vx, vy);
  }
  
  void mover() {
    pos.add(vel);
  }

  void mostrar() {
    fill(#FFEA00);
    ellipse(pos.x, pos.y, r*2, r*2);
  }

  void limitar() {
    if (pos.x > width - r || pos.x < r) {
      vel.x = vel.x * -1;
    }
    if (pos.y > height - r || pos.y < r) {
      vel.y = vel.y * -1;
    }
  }
  
}
