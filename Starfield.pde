//your code here
void setup()
{
	size(500,500);

}
void draw()
{
	background(0);
	NormalParticle one = new NormalParticle();
	one.move();
	one.show();
	
}
class NormalParticle
{
	double myX,myY,myAngle, mySpeed;
	int myColor;
	NormalParticle()
	{
		myColor =color(255,0,0);
		myX = 250;
		myY = 250;
		myAngle = Math.random()*(2*Math.PI);
		mySpeed = (Math.random()* 10);
	}
	void move()
	{
		myX = myX +(Math.cos(myAngle)*mySpeed);
		myY = myY + (Math.sin(myAngle)*mySpeed);
	}

	void show()
	{
		noStroke();
		fill(myColor);
		ellipse((float)myX,(float)myY,5,5);
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

