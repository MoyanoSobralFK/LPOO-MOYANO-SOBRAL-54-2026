Pelota P;       
Paleta J1, J2;

void setup(){
  size(700, 500);

  float sep = width/35*4;
  J1 = new Paleta(        sep, height/2 - (height/6.5/2));
  J2 = new Paleta(width - sep, height/2 - (height/6.5/2));
  P  = new Pelota(width/2, height/2);
}

float sep = width/35*4;
int estado = 0;

void draw(){
    //Si la pelota esta en juego
    if(estado==0){
      background(#000000);
    
      textSize(width/50);
      text(J1.puntaje,         width/100, height/50);
      text(J2.puntaje, width - width/100, height/50);
  
      J1.mostrar();
      J2.mostrar();

      P.mostrar();
      P.mover();
      P.limitar();
  
    //  p.mover();
      //p.contener();
  
      /*j1.mover(is_w, is_s);
      j2.mover(is_o, is_l)
  
      if(j1.chocaCon(p.pos, p.r)){
        p.rebotar();
        p.separar(j1.pos);
      }    
  
      if(j2.chocaCon(p.pos, p.r)){
        p.rebotar();
        p.separar(j2.pos);
      }
    */
  
  
      if       (P.pos.x<0)    {estado = 2;}
      else { if(P.pos.x>width){estado = 1;}}
  }
  
  //Si la pelota toco el lado de un jugador.
 else{ 
       textSize(width/20);
       text("Punto para el jugador " + estado, width/4, height/2);
       
       
       if(mousePressed){
         P.pos.x=width/2;
         P.pos.y=height/2;
         
         if(estado==1){J1.puntaje++;}
         if(estado==2){J2.puntaje++;}

         P.vel.x *= -1;
         if(P.vel.x>0){ P.vel.x += 0.5;}
         else         { P.vel.x -= 0.5;} 
         if(P.vel.y>0){ P.vel.y += 0.5;}
         else         { P.vel.y -= 0.5;} 
         
         estado=0;    
       }
 }
}
