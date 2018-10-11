NormalParticle[]one;
void setup()
{
  size(500,500);
  one = new NormalParticle[300];
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
    myAngle = Math.random()*(Math.PI*2);
  }
  public void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  public void show()
  {
    noStroke();
    fill(0);
    ellipse(250,200,75,75);
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
  public void show()
  {
    fill(255,0,0);
    rect(0,0,50,50);
  }
  public void move()
  {
    
  }
}
class JumboParticle //uses inheritance
{
  //your code here
}
