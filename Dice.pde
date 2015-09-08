int one = 0;
int two = 0;
int three = 0;
int four = 0;
int five = 0;
int six = 0;
int totalnum = 0;

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
   totalnum = one+(two*2)+(three*3)+(four*4)+(five*5)+(six*6);
   fill(0);
   textSize(12);
   textAlign(LEFT);
   text("Number of Ones: "+ one, 25, 65);
   text("Number of Twos: "+ two, 25, 80);
   text("Number of Threes: "+ three, 25, 95);
   text("Number of Fours: "+ four, 200, 65);
   text("Number of Fives: "+ five, 200, 80);
   text("Number of Sixes: "+ six, 200, 95);
   text("Total: "+totalnum, 375, 80);
   textSize(36);
   textAlign (CENTER);
   text("Die Die DICE", 250, 35);
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
      one++;
    } else if (diceNum == 2)
    {  
      noStroke();
      ellipse (diceX + 25, diceY + 75, 20, 20);
      ellipse (diceX + 75, diceY + 25, 20, 20);
      two++;
    } else if (diceNum == 3)
    {
      noStroke();
      ellipse (diceX + 25, diceY + 75, 20, 20);
      ellipse (diceX + 75, diceY + 25, 20, 20);
      ellipse (diceX+50, diceY+50, 20, 20);
      three++;
    } else if (diceNum == 4)
    {
      noStroke();
      ellipse (diceX + 25, diceY + 75, 20, 20);
      ellipse (diceX + 75, diceY + 25, 20, 20);
      ellipse (diceX + 25, diceY + 25, 20, 20);
      ellipse (diceX + 75, diceY + 75, 20, 20);
      four++;
    } else if (diceNum == 5)
    {
      noStroke();
      ellipse (diceX + 25, diceY + 75, 20, 20);
      ellipse (diceX + 75, diceY + 25, 20, 20);
      ellipse (diceX + 25, diceY + 25, 20, 20);
      ellipse (diceX + 75, diceY + 75, 20, 20);
      ellipse (diceX + 50, diceY + 50, 20, 20);
      five++;
    } else 
    {
      noStroke();
      ellipse (diceX+25, diceY+75, 20, 20);
      ellipse (diceX+25, diceY+50, 20, 20);
      ellipse (diceX+75, diceY+25, 20, 20);
      ellipse (diceX+75, diceY+50, 20, 20);
      ellipse (diceX+25, diceY+25, 20, 20);
      ellipse (diceX+75, diceY+75, 20, 20);
      six++;
    }
  }
}
void mouseClicked()
{
  one = 0;
  two = 0;
  three = 0;
  four = 0;
  five = 0;
  six = 0;
  redraw();
}
