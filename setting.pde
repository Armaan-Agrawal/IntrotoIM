float rect_size = 500; 
boolean display_time = true;
boolean display_audio = true;
boolean audio_clicked = false;
boolean time_clicked = false;
float audio_posX;
float audio_posY;
float time_posX;
float time_posY;
float audio_text_mover;
float time_text_mover;
float circle_pos_X;
float circle_pos_Y;

//audio_posX = width/2-rect_size/4;
//audio_posY = height/2;
//time_posX = width/2+rect_size/4;
//time_posY = height/2;

float initial_rect_size = 10;
void setting()
{
  textAlign(BASELINE);
  //print(audio_posY);
  fill(255);
  rectMode(CENTER);

  rect(width/2, height/2, initial_rect_size, initial_rect_size,10);
  if (initial_rect_size < rect_size)
    initial_rect_size+=5;
  else
  {


    fill(255, 0, 0);
    circle(width/2-rect_size/2+20, height/2-230, 20);

    if (display_audio) {
      fill(255);
      circle(audio_posX, audio_posY, 50);  
      fill(0);
      textFont(two_d);
      textSize(10);
      text("Audio controls", audio_posX-60, audio_posY+audio_text_mover);
      if (audio_clicked) {
        if (audio_posX < width/2)
        {
          audio_posX += 4;
        } else {

          if (audio_text_mover < 100) {
            audio_text_mover++;
          }
          else{
            audio_setter();
          }
        }
      }
    }

    if (display_time) {
      fill(0);
      circle(time_posX, time_posY, 50);  
      fill(0);
      textFont(two_d);
      textSize(10);
      text("Timer controls", time_posX-60, time_posY+time_text_mover);
       if (time_clicked) {
        if (time_posX > width/2)
        {
          time_posX -= 4;
        } else {

          if (time_text_mover < 100) {
            time_text_mover++;
          }
          else{
            time_setter();
          }
        }
      }
    }



    settings_control();
  }
}

void settings_control()
{
  if ((dist(mouseX, mouseY, width/2-rect_size/4, height/2) <=20) && (mousePressed == true))
  {
    display_time = false;
    audio_clicked = true;
  }
  
  if ((dist(mouseX, mouseY, width/2+rect_size/4, height/2) <=20) && (mousePressed == true))
  {
    display_audio = false;
    time_clicked = true;
  }
  
  if ((dist(mouseX, mouseY, width/2-rect_size/2+20,height/2-230) <=10) && (mousePressed == true))
  {
    gamescreen = 0;
    display_time = true;
    display_audio = true;
    audio_clicked = false;
    time_clicked = false;
    audio_posX = width/2-rect_size/4;
    audio_posY = height/2;
    time_posX = width/2+rect_size/4;
    time_posY = height/2;
    audio_text_mover = 50;
    time_text_mover = 50;
  }
  
}

void audio_setter()
{
  
  rect(audio_posX, audio_posY+75, 300,20,10);
  fill(255);
  circle(circle_pos_X, audio_posY+75,20);
  textFont(two_d);
  textSize(10);
  fill(0);
  text("0", audio_posX-140,  audio_posY+45);
  text("100", audio_posX+140,  audio_posY+45);
  //float tempX = audio_posX+150;
  //float tempY = audio_posY+75;
  
  
  
  
}

void time_setter()
{
  textSize(10);
  fill(0);
  rectMode(CENTER);
  fill(255);
  rect(time_posX-140,time_posY+50,120,15,10);
  fill(0);
  text("Beginner", time_posX-180,  time_posY+55);
  fill(255);
  rect(time_posX+10,time_posY+50,140,15,10);
  fill(0);
  text("Intermediate", time_posX-50,  time_posY+55);
  fill(255);
  rect(time_posX+180,time_posY+50,120,15,10);
  fill(0);
  text("Advanced", time_posX+140,  time_posY+55);
  
  if ((mouseX >= time_posX-200 && mouseX <= time_posX-80) && (mouseY >= time_posY+42.5 && mouseY <= time_posY+57.5) && (mousePressed == true))
   {
     timer_speed = 36;
   }
   
  if ((mouseX >= time_posX-60 && mouseX <= time_posX+80) && (mouseY >= time_posY+42.5 && mouseY <= time_posY+57.5) && (mousePressed == true))
   {
     timer_speed = 12;
   }
  if ((mouseX >= time_posX+120 && mouseX <= time_posX+240) && (mouseY >= time_posY+42.5 && mouseY <= time_posY+57.5) && (mousePressed == true))
   {
     timer_speed = 6;
   }
   
  
}
