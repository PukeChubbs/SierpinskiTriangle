int randomLen = height;
public void setup()
{
  background(255);
  size(300,300);
}
public void draw()
{
  sierpinski(0, height, randomLen);
}
public void mousePressed()//optional
{
  background(255);
  randomLen = (int)(Math.random()*height);
  sierpinski(0,height,randomLen);
}
public void sierpinski(int x, int y, int len) 
{
  float r,g,b;
  r = (float)(Math.random()*255);
  g = (float)(Math.random()*255);
  b = (float)(Math.random()*255);
  stroke(r,g,b);
  fill(r,g,b);
  if (len <= 20)
  {
    triangle(x, y, x + len / 2, y - len, x + len, y);
  }
  else
  {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
