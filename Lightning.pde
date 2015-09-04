int startX = 151;
int startY = 135;
int endX = 151;
int endY = 135;
PImage bg;

void setup()
{
	strokeWeight(3);
	// background(0);
	bg = loadImage("image.jpg");
  	size(300,300);
  	noLoop();
}

void draw()
{
	background(bg);
	line(startX, startY, endX, endY);
	stroke((int)(Math.random()*256));
		
	while(endY < 300)
	{
		endX = startX + (int)(Math.random()*18)-9;
		endY = startY + (int)(Math.random()*9);		
		startX = endX;
		startY = endY;
		line(startX, startY, endX, endY);
		stroke((int)(Math.random()*256));
	}

}
void mousePressed()
{
	startX = 151;
	startY = 135;
	endX = 151;
	endY = 135;
	redraw();
}

