void keyPressed()
{
  if (key == 'a')
    Ball.hold();
    
  if (key =='f')
    {
      PVector force = new PVector(5,-6);
      Ball.applyForce(force);
    }
      
}

void keyReleased()
{
  if (key == 'f')
  {
      PVector force = new PVector(0,1);
      Ball.applyForce(force);
  }
    
}

void mouseDragged()
{
  if (gamescreen == 1){
    Ball.location.x = mouseX;
    Ball.location.y = mouseY;
    //Ball.location.x = width/2-25;
    //Ball.location.y = 270;
    pull = true;
    force_application();
    println(counter);
    beginShape();
    curveVertex(mouseX,mouseY);
    Ball.tint_setter = 66;
  }
  
  if (gamescreen == 3){
    if (((dist(mouseX, mouseY, circle_pos_X,circle_pos_Y) <=20) && (mousePressed == true)))
    {
      circle_pos_X = mouseX;
      if (circle_pos_X >= width/2+150){
        circle_pos_X = width/2+150;}
      if (circle_pos_X <= width/2-150){
        circle_pos_X = width/2-150;}
        
        
      volume = map(mouseX, width/2-150, width/2+150, 0.0, 1.0);
    }
  }
  
}

void mouseReleased()
{
  if (pull == false)
  {
    
    PVector force = new PVector(0,1);
    Ball.applyForce(force);
    Ball.tint_setter = 226;
  }
}
