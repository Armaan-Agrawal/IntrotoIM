void pause()
{
  textAlign(BASELINE);
  rectMode(CENTER);
  fill(255);
  rect(width/2,height/2,700,500,10);
  rect(width/2, height/2,680,480,10);
  
  
  textFont(two_d);
  textSize(50);
  fill(255);
  rect(625,380,600,100,10);
  fill(0);
  text("Resume", 420, 410);
  fill(255);
  rect(625,580,600,100,10);
  fill(0);
  text("Main Menu", 420, 610);
   
  
  if ((mouseX >= 325 && mouseX <= 925) && (mouseY >= 330 && mouseY <= 430) && (mousePressed == true))
   {
     gamescreen = 1;
     x_p = 200;
   }
  
  if ((mouseX >= 325 && mouseX <= 925) && (mouseY >= 530 && mouseY <= 630) && (mousePressed == true))
   {
     gamescreen = 0;
     x_p = 400;
     c = color(0,255,0);
     score = 0;
   }
}
