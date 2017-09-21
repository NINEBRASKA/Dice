Die bob;
void setup()
{
  size(400,500);
  noLoop();
}
void draw()
{
  background(197,197,197);
  int count = 0;
  for ( int y = 20; y < 400; y = y + 80)
  {
    for ( int x = 20; x < 400; x = x + 80)
    {
      bob = new Die(x,y);
      bob.show();
      count = count + bob.dRandom;
    }
  }
  System.out.println(count);
  text("total: " + count, 200, 450);
}
void mousePressed()
{
  redraw();
}
class Die 
{
  int dRandom, myX, myY;
  Die(int x, int y) 
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    dRandom = (int)(Math.random() * 6) + 1;
  }
  void show()
  {
    fill(200,200,200);
    rect(myX, myY,50,50,10);
    if ( dRandom == 1 )
    {
      fill(0);
      ellipse(myX + 25,myY + 25,5,5);
    }
    else if ( dRandom == 2 )
    {
      fill(0);
      ellipse(myX + 15,myY + 15,5,5);
      ellipse(myX + 35,myY + 35,5,5);
    }
    else if ( dRandom == 3 )
    {
      fill(0);
      ellipse(myX + 15,myY + 15,5,5);
      ellipse(myX + 25,myY + 25,5,5);
      ellipse(myX + 35,myY + 35,5,5);
    }
    else if ( dRandom == 4 )
    {
      fill(0);
      ellipse(myX + 15,myY + 15,5,5);
      ellipse(myX + 35,myY + 15,5,5);
      ellipse(myX + 15,myY + 35,5,5);
      ellipse(myX + 35,myY + 35,5,5);
    }
    else if ( dRandom == 5 )
    {
      fill(0);
      ellipse(myX + 15,myY + 15,5,5);
      ellipse(myX + 35,myY + 15,5,5);
      ellipse(myX + 25,myY + 25,5,5);
      ellipse(myX + 15,myY + 35,5,5);
      ellipse(myX + 35,myY + 35,5,5);
    }
    else if ( dRandom == 6 )
    {
      fill(0);
      ellipse(myX + 15,myY + 15,5,5);
      ellipse(myX + 35,myY + 15,5,5);
      ellipse(myX + 15,myY + 25,5,5);
      ellipse(myX + 35,myY + 25,5,5);
      ellipse(myX + 15,myY + 35,5,5);
      ellipse(myX + 35,myY + 35,5,5);
    }     
  }
}
