int startX = 151;
int startY = 135;
int endX = 151;
int endY = 135;
PImage bg;

void setup()
{
	strokeWeight(1);
	bg = loadImage("image.jpg");
  	size(300,300);
  	// noLoop();
}
void draw()
{
	background(bg);
	stroke(255,255,51);
		
	while(endY < 300)
	{
		endX = startX + (int)(Math.random()*11)-5;
		endY = startY + (int)(Math.random()*9);				
		line(startX, startY, endX, endY);
		stroke(255,255,51);
		startX = endX;
		startY = endY;
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

