void setup()
{
  size (500, 500);  
  background (255);
  noLoop();
}
void draw()
{
  fill (0);  
  rect(25, 25, 100, 100);
  fill (255);
  //noStroke();
  ellipse (50, 100, 20, 20);
  ellipse (100, 50, 20, 20);
  ellipse (75,75,20,20);
  ellipse (50,50,20,20);
  ellipse (100,100,20,20);

  /* for (int x = 25; x < 500; x = x + 100)
   {
   for (int y = 25; y < 500; y = y + 100)
   {
   Die aDice = new Die (x,y);
   Die.roll;
   Die.show;
   }
   }
   */
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int diceX, diceY, diceNum, dotSize, dotX, dotY;

  Die(int x, int y) //constructor
  {
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
      noFill ();
      ellipse (diceX+50, diceY+50, 20, 20);
    } else if (diceNum == 2)
    {  
      noFill();
      ellipse (diceX + 25, diceY + 75, 20, 20);
      ellipse (diceX + 75, diceY + 25, 20, 20);
    } else if (diceNum == 3)
    {
      noFill();
      ellipse (diceX + 25, diceY + 75, 20, 20);
      ellipse (diceX + 75, diceY + 25, 20, 20);
      ellipse (diceX+50,diceY+50,20,20);
    }else if(diceNum == 4)
    {
      ellipse (diceX + 25, diceY + 75, 20, 20);
      ellipse (diceX + 75, diceY + 25, 20, 20);
      ellipse (diceX + 25, diceY + 25, 20, 20);
      ellipse (diceX + 75, diceY + 75, 20, 20);
    } else if (diceNum == 5)
    {
      ellipse (diceX + 25, diceY + 75, 20, 20);
      ellipse (diceX + 75, diceY + 25, 20, 20);
      ellipse (diceX + 25, diceY + 25, 20, 20);
      ellipse (diceX + 75, diceY + 75, 20, 20);
    }
    
  }
}
