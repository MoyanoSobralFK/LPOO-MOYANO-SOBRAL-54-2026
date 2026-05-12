int n=8;
int [][]cuadrado;

void setup(){
  size(700, 700);
  cuadrado = new int[n][n];    
  for(int i=0; i<n; i++){for(int j=0; j<n; j++) {cuadrado[i][j] = 0;}}
}

void draw(){
  
  int y=0, x=0;
  float gris=0, distanciaX=0, distanciaY=0, distancia=0;;
  
  for(int i=0; i<n; i++)
  {
    for(int j=0; j<n; j++)
    {
      //Determinar la distancia entre el centro del cuadrado y el raton.
      if(x+width/n/2<mouseX) {distanciaX = mouseX - (x+width/n/2);}
      else                   {distanciaY = (x+width/n/2) - mouseX;}
      
      if(y+height/n/2<mouseY) {distanciaX = mouseX - (y+height/n/2);}
      else                    {distanciaY = (y+height/n/2) - mouseX;}
     
      distancia = distanciaX * distanciaY;
      
      //Color del cuadrado
      gris = map(distancia, 0, width*height/2, 0, 255); //EL MAXIMO VALOR POSIBLE ES 255, EL MINIMO 0.
      fill(gris, gris, gris);    //RGB.
      
      rect(x, y, width/n, height/n);
      x+= (width/n);
    }
    x=0;
    y+= (height/n);
  }
}
