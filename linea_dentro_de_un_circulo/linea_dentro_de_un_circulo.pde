Pelo p;

void setup(){
  size(800,600);
  p = new Pelo(width/2, height/2);
}

void draw(){
       background(#000000);
       fill(#FFFCFC);
       strokeWeight(0);
       circle(width/2, height/2, width/1.5);
       
       p.mover();
      // p.mostrar();
       if(mousePressed) p.limitar1();
       else             p.limitar2();
  
        p.mostrar();
}
