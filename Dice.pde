void setup()
{
  size (500, 600);  
  noLoop();
}
void draw()
{
  background (255);
  for (int x = 25; x < 500; x = x + 120)
   {
   for (int y = 125; y < 600; y = y + 120)
     {
     Die aDice = new Die (x,y);
     aDice.show();
     }
   }
   
}

class Die //models one single dice cube
{
  int diceX, diceY, diceNum;

  Die(int x, int y) //constructor
  { 
    diceNum = (int)(Math.random()*6+1);
    diceX = x;
    diceY = y;
  }
  void roll()
  {
    diceNum = (int)(Math.random()*6+1);
  }
  void show()
  {
    //your code here
    fill (0);
    rect (diceX, diceY, 100, 100);
    fill (255);
    if (diceNum == 1)
    {
      noStroke ();
      ellipse (diceX+50, diceY+50, 20, 20);
    } else if (diceNum == 2)
    {  
      noStroke();
      ellipse (diceX + 25, diceY + 75, 20, 20);
      ellipse (diceX + 75, diceY + 25, 20, 20);
    } else if (diceNum == 3)
    {
      noStroke();
      ellipse (diceX + 25, diceY + 75, 20, 20);
      ellipse (diceX + 75, diceY + 25, 20, 20);
      ellipse (diceX+50, diceY+50, 20, 20);
    } else if (diceNum == 4)
    {
      noStroke();
      ellipse (diceX + 25, diceY + 75, 20, 20);
      ellipse (diceX + 75, diceY + 25, 20, 20);
      ellipse (diceX + 25, diceY + 25, 20, 20);
      ellipse (diceX + 75, diceY + 75, 20, 20);
    } else if (diceNum == 5)
    {
      noStroke();
      ellipse (diceX + 25, diceY + 75, 20, 20);
      ellipse (diceX + 75, diceY + 25, 20, 20);
      ellipse (diceX + 25, diceY + 25, 20, 20);
      ellipse (diceX + 75, diceY + 75, 20, 20);
      ellipse (diceX + 50, diceY + 50, 20, 20);
    } else 
    {
      noStroke();
      ellipse (diceX+25, diceY+75, 20, 20);
      ellipse (diceX+25, diceY+50, 20, 20);
      ellipse (diceX+75, diceY+25, 20, 20);
      ellipse (diceX+75, diceY+50, 20, 20);
      ellipse (diceX+25, diceY+25, 20, 20);
      ellipse (diceX+75, diceY+75, 20, 20);
    }
  }
}
void mouseClicked()
{
  redraw();
}
