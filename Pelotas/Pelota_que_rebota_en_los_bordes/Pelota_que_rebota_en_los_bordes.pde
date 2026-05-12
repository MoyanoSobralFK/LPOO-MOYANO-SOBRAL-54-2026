PVector pos, vel;

void setup(){
  size(800, 600);
  pos = new PVector(width/2, height/2);
  vel = new PVector(2, -1);
}
int x=0, y=0;

void draw(){
 background(#242367);
 println(pos.x, pos.y);
 pos.add(vel);
 
 fill(#FFEA00);
 ellipse(pos.x, pos.y, 10, 10);
 
 if(pos.x==0||pos.x==width)  {vel.x =vel.x *-1;}
 
 if(pos.y==0||pos.y==height) {vel.y =vel.y *-1;}
}
