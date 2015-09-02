Die aaa = new Die(25,25); 
void setup()
{
  size (500,500);  
  background (255);
  noLoop();
}
void draw()
{
  fill (0);  
  rect(25,25,100,100);
  fill (255);
  //noStroke();
  ellipse (50,100,20,20);
  ellipse (150,50,20,20);
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
        rect (diceX,diceY,100,100);
        fill (255);
        if (diceNum == 1)
        {
         ellipse (diceX+50,diceY+50,20,20);
        }
        else if (diceNum == 2)
        {
          ellipse (1,1,1,1);
        }
    }
}
