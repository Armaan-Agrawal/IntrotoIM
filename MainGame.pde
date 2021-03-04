void play_game()
{
  Ball.exist(); 
  throw_player.display();
  hoop.display();
  imageMode(CORNER);
  image(rim_image,width-230,height-560,150,100);
}



void force_application()
{
      counter++;
      
      pull_force.x = map(mouseX,0,width/2-25,-650,0);
      pull_force.y = map(mouseY,270,ground_level,0,650);
      pull_force.x *= -1;
      pull_force.y *= -1;
      Ball.applyForce(pull_force);
      pull = false;    
}  

void Point_scored()
{
  

}
