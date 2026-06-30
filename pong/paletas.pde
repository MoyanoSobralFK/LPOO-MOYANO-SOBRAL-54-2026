class Paleta {
  PVector pos;    
  PVector vel;    
  
  Paleta(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(random(-3, 3), random(-3, 3)); 
  }

  void mostrar() {
    fill(#FFFFFF);
    rect(pos.x, pos.y, width/35, height/6.5);
  }
}
