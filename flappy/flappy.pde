ArrayList<Cuadrado> tubos;
Pelota bird;
float ultimoPar=0;
PVector G= new PVector(0, 2);

void setup() {
  createCanvas(400, 400);

  tubos = new Array<Cuadrado>();
  bird = new Pelota(100, height/2);
}

void draw() {
  background(0);

  agregarTubos();
  bird.addFuerza();
  bird.mover();
  borrartubos();

  for(Cuadrado t:tubos)
  {
      t.mover;
      t.mostrar;
  }

  bird.mostrar();
  
  
  
  fill(0);
  text("hola", 50, 50);
}

void borrartubos()
{
  for(int i=tubos.size()-1; i>=0; i--)
    {
      Cuadrado Aux = tubos.get(i);
      if(aux.pos.x<0)
      {
        tubos.remove(i);
      }
}

void agregarTubos(){
  float tActual = millis();
  float dt = tActual - UltimoPar;

  if(dt>5000){}
  {
    tubos.add(new cuadrado(..., ...);
    tubos.add(new cuadrado(..., ...);
    ultimoPar = TActual;
  }
}