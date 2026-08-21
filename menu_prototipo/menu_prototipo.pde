/*Menu de inicio*/
 

void setup() 
{
  size(800, 700);
  frameRate(10);
}

int contador = 1;
void draw() 
{
  background(0);
  
  
  textSize(width/36);
  if(contador % 2!=0) {fill(#FFFFFF);}
  else                {fill(#E3A710);}
  text("PRESIONA ENTER", width/2.5, height - (width/36)); 
  contador++;
}
