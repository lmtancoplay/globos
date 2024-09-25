PImage payaso;

class Globo
{
  float x, y,vx,vy;
  PImage fondo;
  Globo (PImage img, float _x, float _y)
  {
   fondo = img; 
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5);
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {
      ellipse(x,y,100,140);
      imageMode(CENTER);
      image(fondo,x,y,81,101);
  }
  
}

ArrayList<Globo> globos;


void setup()
{
  size(640,480);
  globos = new ArrayList<Globo>();
  payaso = loadImage("clown.png");
}

void draw()
{
  background(20,20,200);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(payaso, mouseX,mouseY));
}
