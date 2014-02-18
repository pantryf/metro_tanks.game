class Entity
{
  int[] X, Y;
  int[] Width, Height;
  color[] Color;
  
  // Make an entity
  Entity() { }
  Entity(int[] x, int[] y, int[] wdth, int[] hght, color[] clr)
  {
    X = x; Y = y;
    Width = wdth; Height = hght;
    Color = clr;
  }
  
  // Draw entity
  void Draw()
  {
    noStroke();
    for(int i = 0; i < X.length; i++)
    {
      fill(Color[i]);
      rect(X[i]*10, Y[i]*10, Width[i]*10, Height[i]*10);
    }
  }
}

