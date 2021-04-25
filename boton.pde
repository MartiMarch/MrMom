class Button{
  String text = "", func;
  int bWidth, bHeight;
  PVector pos, col;
  int textSize;
  PImage imagen;
  
  public Button(int bWidth, int bHeight, PVector pos, String text, int textSize, String func, PVector col)
  {
    this.bWidth = bWidth;
    this.bHeight = bHeight;
    this.pos = pos;
    this.text = text;
    this.textSize = textSize;
    this.func = func;
    this.col = col;
  }
  
  public Button(int bWidth, int bHeight, PVector pos, String func, PImage imagen)
  {
    this.bWidth = bWidth;
    this.bHeight = bHeight;
    this.pos = pos;
    this.func = func;
    this.imagen = imagen;
  }
   
  public void draw()
  {
    if(text.equals(""))
    {
         image(imagen, pos.x, pos.y, bWidth, bHeight);
    }
    else
    {
      pushMatrix();
      textSize(textSize);
      translate(pos.x, pos.y);
      stroke(0, 0, 0);
      strokeWeight(2);
      rectMode(CORNER);
      rect(0, 0, bWidth, bHeight, 20);
      textAlign(CENTER);
      fill(0);
      text(text, floor(bWidth/2), ceil(bHeight/2) + (textSize/2));
      popMatrix();
    }
  }
  
  public boolean isClicked(int x, int y)
  {
    boolean pulsado = false;
    if(x >= pos.x && x <= pos.x + bWidth && y >= pos.y && y <= pos.y + bHeight)
    {
      pulsado = true;
    }
    else
    {
      pulsado = false;
    }
    return pulsado;
  }
}
