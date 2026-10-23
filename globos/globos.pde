
class Globo
{
  float x, y,vx,vy;
  Globo (float _x, float _y)
  {
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
      ellipse(x,y,80,100);
      imageMode(CENTER);
      image(cara,x,y,70,90);
      triangle(x,y+50,x-10,y+60,x+10,y+60);
  }
  
}

ArrayList<Globo> globos;

PImage cara; 
void setup()
{
  size(800,1000);
  globos = new ArrayList<Globo>();
  cara = loadImage("donald.png");
 
}

void draw()
{
  background(0,100,250);
 
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY));
}
