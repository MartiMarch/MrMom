class FSM
{
  int estado = 0;
  ArrayList<Estado> estados = new ArrayList();
  
  public FSM(){}
  
  public void addState(int estado)
  {
    estados.add(new Estado(estado));
  }
  
  public void addImagen(int estado, PImage imagen)
  {
    estados.get(estado).imagenes.add(imagen);
  }
  
  public void addBoton(int estado, Button boton)
  {
    estados.get(estado).botones.add(boton);
  }
  
  public void run()
  {
    estados.get(estado).run();
  }
  
  public void setLocation(int x, int y)
  {
    estados.get(estado).setLocation(x, y);
  }
  
  public void cambiarEstado(int estado)
  {
    this.estado = estado;
  }
}
