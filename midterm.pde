import processing.sound.*;
SoundFile bgm; 

float ground_level;
Physical_Body Ball; 
int counter =0; 
boolean pull = false; 
PVector pull_force = new PVector(0, 0);
PImage ball_img;
PImage idle_player_spritesheet; 
PImage[][] idle_player_sprites;
PImage bounce_player_spritesheet; 
PImage[][] bounce_player_sprites;
Hoop hoop;
Player bounce_player;
Player throw_player;
PImage rim_image;
int gamescreen = 0; 
PImage b_img;
PFont two_d;
float volume = 0.5;

void setup()
{
  ball_img = loadImage("justbasketball-8.png");
  rim_image = loadImage("p.png");
  size(1280, 960);
  
  audio_posX = width/2-rect_size/4;
  audio_posY = height/2;
  time_posX = width/2+rect_size/4;
  time_posY = height/2;
  audio_text_mover = 50;
  time_text_mover = 50;
  circle_pos_X = width/2;
  circle_pos_Y = height/2+75;
  
  ground_level = height * 0.75;
  bounce_player = new Player("gasol_botando.png", width/2-500, 300, 4, 3, 275, 450);
  throw_player = new Player("gasol_lanzando.png", width/2-200, 300, 3, 2, 275, 450);
  Ball = new Physical_Body(width/2-25, 270, 95, ground_level, ball_img);
  hoop = new Hoop(width-240, height-700, "hoop.png", 240, 240);
  two_d = createFont("PressStart2P.ttf",32);
  
  
  bgm = new SoundFile(this, "music.mp3");
  
  bgm.play();
  bgm.loop();
}





void draw()
{
  bgm.amp(volume);
  b_img = loadImage("basketball_background.jpg");
  background(b_img);
  

  switch(gamescreen) {
    case 0: 
      menu();
      break;
    case 1: 
      play_game();
      break;
    case 2:
      instruction();
      break;
    case 3:
      setting();
      break;
    case 4:
      gameover();
      break;
    default:
      break;
    
  }
  //line(0, ground_level, width, ground_level); 
  fill(0);
  textSize(10);
  text("MouseX : " + mouseX + "MouseY: " + mouseY, mouseX, mouseY);
}
