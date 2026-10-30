
class Globo
{
  // Atributos de la clase globo
  float x, y,vx,vy,ax,ay;
  color c;

  // Constructor de la clase 
  Globo (float _x, float _y)
  {
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5);
   ax=random(-0.1,0.1);
   ay=random(-0.2,-0.1);
   c = color(random(0,255),random(0,255),100);
  }

  void update()
  {
    y+=vy;
    x+=vx;
    vx+=ax;
    vy+=ay;
  }

  void dibujate()
  {
      fill(c);
      rectMode(CENTER);
      rect(x,y,100,120);
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
  background(100,100,100);
 
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
