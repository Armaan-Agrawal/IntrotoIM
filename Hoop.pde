class Hoop {
  float posX;
  float posY;
  PImage img;
  float w,h;

  Hoop(float x, float y, String s_img, float _w,float _h)
  {
    posX = x;
    posY= y;
    img = loadImage(s_img);
    w = _w;
    h = _h;
  }

  void display()
  {
    tint(255, 226);
    imageMode(CORNER);
    image(img, posX, posY,w,h);
  }
}
