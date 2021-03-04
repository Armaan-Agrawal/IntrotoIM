
class Physical_Body{
    
    
    PVector gravity = new PVector(0, 1);
    PVector location = new PVector(0,0);
    PVector velocity;
    PVector acc;
    float mass = 0;
    float ground; 
    boolean hold = false;
    PImage img; 
    float tint_setter = 226;
    float i_w;
    float i_h;
    
     Physical_Body(float x, float y, float m, float g, PImage _img)
    {
      location.x = x;
      location.y = y;
      mass = m;
      ground = g;
      acc = new PVector(0,0);
      velocity = new PVector(0,0);   
      img = _img;
      
    }
    
    
    
     
    void applyForce(PVector force)
    { 
      PVector force_acc;
      force_acc = force.div(mass);
      acc = force_acc.add(gravity);
    }
    
    void stationary()
    {
      if (location.y >= ground - mass/2)
      {
      velocity.y *= -.9;
      location.y = ground - mass/2; 
      }
      
      if (location.x >= width - mass/2)
      {
      velocity.x *= -.9;
      location.x = width - mass/2; 
      }
      
      if (location.x <= mass/2)
      {
      velocity.x *= -.9;
      location.x = mass/2; 
      }
      
      if ((location.y >= hoop.posY) && (location.y <= height-560) && (location.x >= hoop.posX) && (location.x <= width - mass/2))
      {
      velocity.x *= -.9;
      }
    }
  

      
    
    
    void update() 
    {
      velocity.add(acc);
      location.add(velocity);
      //acc.mult(0);
      velocity.mult(0.98);//damping
      
      //if(location.y <= ground )
      //{
      //  PVector force = gravity.mult(mass);
      //  applyForce(force);
      //}
        stationary();
      
    }
    
    void display()
    {
      tint(255,tint_setter);
      imageMode(CENTER);
      image(img,location.x,location.y,mass,mass);  
      
    }
     
    void exist()
    {
      display();
      if (!hold)
        update();   
    }
    
    void hold()
    {
      if (hold == false)
        hold = true;
      else
        hold = false;
    }
     
  }
