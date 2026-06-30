Paleta J1, J2;

void setup(){
  size(700, 500);
  J1 = new Paleta(        width/35*4, height/2 - (height/6.5/2));
  J2 = new Paleta(width - width/35*4, height/2 - (height/6.5/2));
}

void draw(){
  background(#000000);
  
  J1.mostrar();
  J2.mostrar();
}
