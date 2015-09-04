import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Lightning extends PApplet {

int startX = 151;
int startY = 135;
int endX = 151;
int endY = 135;
PImage bg;

public void setup()
{
	strokeWeight(3);
	// background(0);
	bg = loadImage("image.jpg");
  	size(300,300);
  	noLoop();
}
public void draw()
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
public void mousePressed()
{
	startX = 151;
	startY = 135;
	endX = 151;
	endY = 135;
	redraw();
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Lightning" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
