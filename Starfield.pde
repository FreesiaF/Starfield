Particle[] particles;
boolean lightSpeed = false;
public void setup()
{
	
	size(500,500);
	particles = new Particle[2000];
	for (int i = 0; i< particles.length; i++)
	{
		particles[i] = new NormalParticle();
		particles[0]= new OddballParticle();
		particles[i/100] = new JumboParticle();	
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
	fill(0,0,0,75);
	noStroke();
	ellipse(250,250,50,50);
	ellipse(250,250,75,75);
	ellipse(250,250,100,100);
	ellipse(250,250,150,150);
	ellipse(250,250,200,200);
	ellipse(250,250,250,250);
}

void mousePressed()
{
	lightSpeed = !lightSpeed;

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
		if (lightSpeed ==false)
		{
			myX = myX +(Math.cos(myAngle)*mySpeed);
			myY = myY + (Math.sin(myAngle)*mySpeed);
		}
		
		else 
		{
			myX = myX +(Math.cos(myAngle)*(mySpeed*5));
			myY = myY + (Math.sin(myAngle)*(mySpeed*5));
		}


	}

	public void show()
	{
		if (lightSpeed == false)
		{
			noStroke();
			fill(myColor);
			ellipse((float)myX,(float)myY,2,2);
		}
		
		else
		{
			stroke(255);
			strokeWeight(1);
			line((float)myX,(float)myY,(float)(myX +Math.cos(myAngle)*20),(float)(myY + Math.sin(myAngle)*20));
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
		noStroke();
		fill(255,0,0);
		ellipse(myX,myY,10,10);
	}

	
	
}
class JumboParticle extends NormalParticle
{
	public void show()
	{
		if (lightSpeed == false)
		{
			fill(255);
			ellipse((float)myX,(float)myY,10,10);
		}
		
		else 
		{
			stroke(255);
			strokeWeight(2);
			line((float)myX,(float)myY,(float)(myX +Math.cos(myAngle)*20),(float)(myY + Math.sin(myAngle)*20));
		}
	}
}

