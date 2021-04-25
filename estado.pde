class Estado{
 ArrayList<Button> botones = new ArrayList();
 ArrayList<PImage> imagenes = new ArrayList();
 int id;
 int x = -1, y = -1;
 
 public Estado(int id)
 {
   this.id = id;
 }
 
 void run()
 {
   if(id == ST_PLAY)
   {
     for(int i = 0; i < imagenes.size(); ++i)
     {
       image(imagenes.get(i), 0, 0, Ancho, Alto);
     }
     for(int i = 0; i < botones.size(); ++i)
     {
        botones.get(i).draw();
     }
     for(int i = 0; i < botones.size(); ++i)
     {
       if(botones.get(i).isClicked(x, y))
       {
         ejecutarFuncion(botones.get(i).func);
       }
     }
     x = -1;
     y = -1;
   }
 }
 
 public void setLocation(int x, int y)
 {
   this.x = x;
   this.y = y;
 }
}
