NormalParticle[]one;
void setup()
{
  size(500,500);
  one = new NormalParticle[100];
  for(int i = 0; i < one.length; i++)
  {
    one[i] = new NormalParticle();
  }
}
void draw()
{
  background(0);
  for(int i = 0; i < one.length; i++)
  {
    one[i].move();
    one[i].show();
  }
}
class NormalParticle
{
  int myColor;
  double myX, myY, mySpeed, myAngle;
  NormalParticle()
  {
    myX = 250;
    myY = 250;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    mySpeed = Math.random()*10;
    myAngle = Math.random()*(Math.PI*2);
  }
  void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show()
  {
    ellipse((float)myX,(float)myY,10,10);
  }
}
interface Particle
{
  //your code here
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}

