int ST_PLAY = 0, Ancho, Alto, N = 600;
FSM game = new FSM();

void setup()
{
  size(600, 600);
  Alto = N;
  Ancho = N;
  PImage imagen;
  
  //Estado 0
  game.addState(0);
  imagen = loadImage("assets/help1.png");
  game.addImagen(0, imagen);
  imagen = loadImage("assets/buttons.png");
  Button botonAdelante0 = new Button(imagen.width/2, imagen.height/3, new PVector(0, 0), "siguiente0", imagen.get(0, imagen.height/3, imagen.width/2, imagen.height/3));
  game.addBoton(0, botonAdelante0);
  
  //Estado 1
  game.addState(1);
  imagen = loadImage("assets/help2.png");
  game.addImagen(1, imagen);
  imagen = loadImage("assets/buttons.png");
  Button botonAdelante1 = new Button(imagen.width/2, imagen.height/3, new PVector(0, 0), "siguiente1", imagen.get(0, imagen.height/3, imagen.width/2, imagen.height/3));
  game.addBoton(1, botonAdelante1);
  Button botonAtras1 = new Button(imagen.width/2, imagen.height/3, new PVector(0, imagen.height/3), "atras1", imagen.get(imagen.width/2, imagen.height/3, imagen.width/2, imagen.height/3));
  game.addBoton(1, botonAtras1);
  
  //Estado 2
  game.addState(2);
  imagen = loadImage("assets/help3.png");
  game.addImagen(2, imagen);
  imagen = loadImage("assets/buttons.png");
  Button botonAtras2 = new Button(imagen.width/2, imagen.height/3, new PVector(0, 0), "atras2", imagen.get(imagen.width/2, imagen.height/3, imagen.width/2, imagen.height/3));
  game.addBoton(2, botonAtras2);
  
}

void draw()
{
  background(255,255,255);
  game.run();
}

void mousePressed()
{
  game.setLocation(mouseX, mouseY);
}

public int ejecutarFuncion(String nombreFuncion)
{
  int resultado = -1;
  
  switch(nombreFuncion)
  {
    case "siguiente0":
      game.cambiarEstado(1);
      ST_PLAY = 1;
      break;
      
    case "siguiente1":
      game.cambiarEstado(2);
      ST_PLAY = 2;
      break;
      
    case "atras1":
      game.cambiarEstado(0);
      ST_PLAY = 0;
    break;
    
    case "atras2":
      game.cambiarEstado(1);
      ST_PLAY = 1;
    break;
    
    default:
      break;
  }
  
  return resultado;
}
