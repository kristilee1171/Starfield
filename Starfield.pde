NormalParticle[]one;
OddballParticle two;
JumboParticle three;
void setup()
{
  size(500,500);
  one = new NormalParticle[300];
  for(int i = 0; i < one.length; i++)
  {
    one[i] = new NormalParticle();
  }
  two = new OddballParticle();
  three = new JumboParticle();
}
void draw()
{
  background(0);
  for(int i = 0; i < one.length; i++)
  {
    one[i].move();
    one[i].show();
  }
  two.show();
  two.move();
  three.show();
  three.move();
}
class NormalParticle implements Particle
{
  int myColor;
  double myX, myY, mySpeed, myAngle;
  NormalParticle()
  {
    myX = 250;
    myY = 200;
    myColor = color(255);
    mySpeed = Math.random()*2;
    myAngle = Math.random()*Math.PI*2;
  }
  public void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  public void show()
  {
    noStroke();
    fill(myColor);
    ellipse((float)myX,(float)myY,2,2);
    if((float)myX > 500 || (float)myY > 500 || (float)myX < 0 || (float)myY < 0)
    {
      myX = 250;
      myY = 200;
    }
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  int myColor;
  double myX, myY;
  OddballParticle()
  {
    myX = 0;
    myY = 0;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  public void move()
  {
    if(myX < 600)
    {
      myX = myX + 3;
      myY = myX;
    }
    if(myX > 550)
    {
      myX = 0;
      myY = 0;
      myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    }
  }
  public void show()
  {
    noStroke();
    fill(myColor);
    rect((float)myX,(float)myY,(float)myX+5,(float)myY+5);
  }
}
class JumboParticle extends NormalParticle
{
  public void show()
  {
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    ellipse((float)myX,(float)myY,30,30);
    if((float)myX > 500 || (float)myY > 500 || (float)myX < 0 || (float)myY < 0)
    {
      myX = 250;
      myY = 200;
      myAngle = Math.random()*Math.PI*2;
    }
  }
}
