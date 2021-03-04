void menu()
{ 
  bounce_player.display(); 
  rectMode(CORNER);
  fill(0);
  textFont(two_d);
  textSize(75);
  text("2-D", 830, 160);
  textSize(65);
  text("Basketball", 580, 250);
  

  fill(255);
  rect(800,335,350,100,10);
  rect(810,345,330,80,10);
  
  fill(0);
  textFont(two_d);
  textSize(50);
  text("play", 920, 410);
  
  
  fill(255);
  rect(800,485,350,100,10);
  rect(810,495,330,80,10);
  
  fill(0);
  textFont(two_d);
  textSize(50);
  text("guide", 880, 560);
  
  
  fill(255);
  rect(650,655,500,100,10);
  rect(660,665,480,80,10);
  
  fill(0);
  textFont(two_d);
  textSize(50);
  text("settings", 740, 730);
  
  click_buttons();
   
}


void click_buttons()
{
 if(gamescreen == 0) {
   if ((mouseX >= 800 && mouseX <= 1150) && (mouseY >= 335 && mouseY <= 445) && (mousePressed == true))
   {
     gamescreen = 1;
   }
   
   if ((mouseX >= 800 && mouseX <= 1150) && (mouseY >= 485 && mouseY <= 585) && (mousePressed == true))
   {
     gamescreen = 2;
   }
   
   if ((mouseX >= 650 && mouseX <= 1150) && (mouseY >= 655 && mouseY <= 755) && (mousePressed == true))
   {
     gamescreen = 3;
   }
 }
}
