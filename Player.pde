class Player {

  PImage spritesheet;
  PImage [][] sprites;
  float x, y;
  int r, c; 
  int player_width;
  int player_height;
  int step = 0; 
  int direction = 0; 

  Player(String string, float _x, float _y, int _r, int _c, int pw, int ph)
  {
    x = _x;
    y = _y;
    r = _r;
    c = _c;
    spritesheet = loadImage(string);
    sprites = new PImage[r][c];
    player_width = pw;
    player_height = ph;
  }

  void sprite_calculate()
  {
   int w = spritesheet.width/c;
    int h = spritesheet.height/r;

    for (int y=0; y < r; y++) {
      for (int x=0; x< c; x++) {
        sprites[y][x] = spritesheet.get(x*w, y*h, w, h);
      }
    }
  }
  
  void display()
  {
    sprite_calculate();
    
    if (frameCount % 3 == 0){
      step = (step + 1) % c;
      if (step % 2 == 0){
        direction = (direction + 1 ) % r; 
      }
    }
    
    tint(255,226);
    imageMode(CORNER);
    image(sprites[direction][step],x,y,player_width,player_height); 
  }
  
  
}
