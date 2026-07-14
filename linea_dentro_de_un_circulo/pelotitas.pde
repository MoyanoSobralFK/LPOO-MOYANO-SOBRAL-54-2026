class Pelo {
  PVector pos;
  PVector vel;
  int R = width/1000;
  
  Pelo(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(random(-4, 4), random(-4, 4));
  }
  
  void mover() {
    pos.add(vel);
  }
  
  void mostrar() {
    float r = width/1.5;
    float distancia = dist(pos.x, pos.y, width/2, height/2);
    
    println(pos.x, "       ", pos.y, "       ", distancia, "       ", r);
    if (distancia < r/2) {
      strokeWeight(width/600);
      stroke(random(0, 255), random(0, 255), random(0, 255));
      line(width/2, height/2, pos.x, pos.y);
    }
    
    fill(#FFEA00);
    circle(pos.x, pos.y, 11);
  }
  
  void limitar1() {
    if (pos.y < -R) pos.y = height + R;
    if (pos.y > height + R) pos.y = -R;
    if (pos.x < -R) pos.x = width + R;
    if (pos.x > width + R) pos.x = -R;
  }
  
  void limitar2() {
    if (pos.x > width - R || pos.x < R) {
      vel.x = vel.x * -1;
    }
    if (pos.y > height - R || pos.y < R) {
      vel.y = vel.y * -1;
    }
  }
}
