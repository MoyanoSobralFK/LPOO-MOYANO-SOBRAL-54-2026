/*
Cada vez que el usuario haga click, se debe dibujar un círculo en la posición actual del mouse. 
Estas posiciones deben almacenarse en un array, de manera que los círculos permanezcan visibles en pantalla.
El programa debe mostrar como máximo 10 círculos simultáneamente. 
Una vez alcanzado ese límite, cada nuevo click deberá reemplazar la posición más antigua por la nueva, manteniendo siempre visibles solo los últimos 10 puntos registrados.
*/

int c=10;    //Cantidad.
int n=0;     //Numero de circulo.
boolean seApreto = false;
int [][]circulo;
void setup(){
  size(800, 800);
  circulo = new int[c][2];    //circulo[numero de circulo][x o y];
  for(int i=0; i<c; i++)
  {
    for(int j=0; j<=1; j++) {circulo[i][j] = 0;}
  }
}

void draw(){
  background(#1A367C);
  int d = width / 15;
  
  if(seApreto==true)
  {
    for(int i=0; i<c; i++)
    {
      fill(#F7F769);
      circle(circulo[i][0], circulo[i][1], d);
    }
  }
}

void mousePressed(){
      circulo [n][0] = mouseX;
      circulo [n][1] = mouseY;
      n++;
      if(n==c){n=0;}
      seApreto=true;
}




































































/*
int []hcuadrado;
void setup(){
  size(800, 600);
  
  int n = 10;
  hcuadrado = new int[n];
  for (int i=0; i<n; i++){
    hcuadrado [i] = height/2; 
    }
}

void draw(){
    background(#FFFFFF);
    int x=0, n=10;
    for(int i=0; i<n; i++)
    {   

     //if(i%2==0) {fill(#FFF398);}
     //else       {fill(#030248);}
      rect(x, hcuadrado [i], x, mouseY);    
      x+= (width/n);
     }
}

*/
