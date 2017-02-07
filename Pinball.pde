//Pinball
void setup()
{
  fullScreen();
  
  lm = new PVector(150,150);
  move = new PVector(2.5, 4);
  
  
}

int num = 0;
PVector lm;
PVector move;

void menu()
{
  background(0);
  stroke(255);
  ellipse(lm.x,lm.y,120,120);
  lm.add(move);
   if ((lm.x > width-120) || (lm.x < 120)) 
   {
      move.x = move.x * -1;
   }
  if ((lm.y > height-120) || (lm.y < 120))
  {
      move.y = move.y * -1;
  }
  
  textSize(50);
  text("Pinball", (width/2-100), (height/2-50));         //main menu is displayed   
  text("Press Enter to start", (width/2-200), height/2);
  if(keyPressed)                                         //checking if a key was pressed
  {
    if(keyCode == ENTER)                                 //if enter was pressed num is changed to 1 
    {
      num=1;
    }
  }
}


void draw()
{
  menu();
  if(num==1)                                             //when num is 1 the game screen is drawn
  {
    background(0);
    line(50, 50, width-50, 50);                          //top line
    line(50, 50, 50, height-50);                         //left line
    line(width-50, 50, width-50, height-50);             //right line
    line(50, height-50, (width/2)-150, height-50);       //bottom left
    line(width-50, height-50, (width/2)+150, height-50); //bottom right
  }
  
  
}