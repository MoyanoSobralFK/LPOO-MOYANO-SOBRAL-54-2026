Movil a;

void setup(){
    size(500, 500);
    a = new Movil(10, 10 , width/100, height/100);
}

void draw(){  
    background(#030000);
    float x = width/4;            float y = height/4;
    float largo = width/2;        float alto = height/2;
  
  
    float masCercanoX = constrain(a.pos.x, x, x + largo);
    float masCercanoY = constrain(a.pos.y, y, y + alto);
  
    // Distancia entre el círculo y el punto más cercano del rectángulo
    float distX = a.pos.x - masCercanoX;
    float distY = a.pos.y - masCercanoY;
    float distancia = sqrt((distX * distX) + (distY * distY));
  
  
    if (distancia < a.pos.x) {fill(#FF0055);} 
    else                     {fill(#F5E3E3);}
  
    rect(x, y, largo, alto);
    
    a.mover();
    a.mostrar();
    a.limitar();
    
}
