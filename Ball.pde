class Ball
{
  float cx;
  float cy;
  float r;
  
  
  Ball(float cx, float cy, float r)
  {
    this.cx = cx;
    this.cy = cy;
    this.r = r;
  }
  
  void render()
  {
    fill(255);
    ellipse(cx, cy, r, r);
    cy = cy + speedY;
    speedY = speedY + gravity;
    cx = cx +speedX;
    
    if(cy > height-50)
    {
      cy = cy - speedY;
      speedY = speedY * -0.9;
    }
    if(cy < 50)
    {
      cy = cy + speedY;
      speedY = speedY + gravity;
    }
    if(cx > width-50)
    {
      speedX = -2;
    }
    if(cx < 50)
    {
      speedX = 2;
      cx = cx +speedX;
    }
    
  }
  
}//end ball