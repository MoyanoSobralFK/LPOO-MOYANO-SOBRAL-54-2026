mueve = false;

void keyPressed(){
  if(key=='w'    || key=='W')    mueve.w   = True;
  if(key=='s'    || key=='S')    mueve.s   = True;
  if(key=='up'   || key=='UP')   mueve.up  = True;
  if(key=='down' || key=='DOWN') mueve.down= True;
}

void keyReleased(){
  if(key=='w'    || key=='W')    mueve.w   = True;
  if(key=='s'    || key=='S')    mueve.s   = True;
  if(key=='up'   || key=='UP')   mueve.up  = True;
  if(key=='down' || key=='DOWN') mueve.down= True;
}
