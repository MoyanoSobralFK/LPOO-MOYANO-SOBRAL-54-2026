mueve = false;

void keyPressed(){
  if(key=='w'    || key=='W')    mueve.w   = true;
  if(key=='s'    || key=='S')    mueve.s   = true;
  if(key=='up'   || key=='UP')   mueve.up  = true;
  if(key=='down' || key=='DOWN') mueve.down= true;
}

void keyReleased(){
  if(key=='w'    || key=='W')    mueve.w   = false;
  if(key=='s'    || key=='S')    mueve.s   = false;
  if(key=='up'   || key=='UP')   mueve.up  = false;
  if(key=='down' || key=='DOWN') mueve.down= false;
}
