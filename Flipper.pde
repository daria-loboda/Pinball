
class Flipper
{
  float x1, x2, x3;
  float y1, y2, y3;
  int rad = 125;
  float ang = radians(70);     //angle for left flipper
  float rang = radians(290);   //angle for right flipper
 


Flipper (float x1, float y1, float x2, float y2, float x3, float y3)//constructor
{
  this.x1 = x1;
  this.x2 = x2;
  this.x3 = x3;
  this.y1 = y1;
  this.y2 = y2;
  this.y3 = y3;
}

void render()
{
  fill(255);;
  triangle(x1, y1, x2, y2, x3, y3);
}

void updateLeft()                    //update for left flipper
{
  //ang+=PI*0.1;
  if(flipL)                          
  {
    ang=radians(70);                 //angle is 70 rad, not moved
  }
  else
  {
    ang=radians(100);                //else angle is 100rad, moved
  }
  x2 = (sin(ang) * rad ) + x1;       //changing the pos of x2 in flipper triangle
  y2 = (-cos(ang) * rad ) + y1;      //changing the pos of y2 in flipper triangle
  
  flipL = false;                     //move back down
  //ang += radians(1); //testing if moves
}

void updateRight()                   //update for right flipper
{
  if(flipR)
  {
    rang=radians(290);               //angle not moved
  }
  else
  {
    rang=radians(260);               //angle moved
  }
  x2 = (sin(rang) * rad ) + x1;      //changing the pos of x2 in flipper triangle
  y2 = (-cos(rang) * rad ) + y1;     //changing the pos of y2 in flipper triangle
  
  flipR = false;
}

}//end flipper