Particle[] particles;
public void setup()
{
	
	size(500,500);
	particles = new Particle[1000];
	for (int i = 0; i< particles.length; i++)
	{
		particles[i] = new NormalParticle();
		particles[0]= new OddballParticle();	
	}
	
}

public void draw()
{
	background(0);
	for (int i = 0; i < particles.length; i++)
	{
		particles[i].move();
		particles[i].show();
	}

	
}
class NormalParticle implements Particle
{
	double myX,myY,myAngle, mySpeed;
	int myColor;
	NormalParticle()
	{
		myColor =color(255);
		myX = 250;
		myY = 250;
		myAngle = (Math.random()*(2*Math.PI));
		mySpeed = (Math.random()* 8);
	}
	public void move()
	{
		myX = myX +(Math.cos(myAngle)*mySpeed);
		myY = myY + (Math.sin(myAngle)*mySpeed);


	}

	public void show()
	{
		noStroke();
		fill(myColor);
		ellipse((float)myX,(float)myY,2,2);
	}
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle
{
	int myX, myY;
	OddballParticle()
	{
		myX = 25;
		myY = 25;
	}
	public void move()
	{

		myX = myX + 2;
		myY = myY + 2;
	}

	public void show()
	{
		ellipse(myX,myY,10,10);
	}

	
	
}
class JumboParticle implements Particle
{
	int myX, myY;
}

