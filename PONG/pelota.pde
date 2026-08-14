class Pelota{
   PVector pos;
   PVector vel;
   int r = width/100;
   
   Pelota(float x, float y){
     pos = new PVector(x, y);
     
     float sentido = random(-1, 1);     if(sentido==0){sentido = 1;}
     vel = new PVector(6*sentido, 3);
   }
   
   void mover(){
     pos.add(vel);
   }
   
   void mostrar() {
    fill(#FFEA00);
    ellipse(pos.x, pos.y, r*2, r*2);
  }
  
   void limitar() {
    if (pos.y > height - r || pos.y < r)  {vel.y = vel.y * -1;}
    

  }
}
