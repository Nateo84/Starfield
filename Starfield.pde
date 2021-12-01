ArrayList <Star> sList = new ArrayList <Star> ();
int sNum = 500;
void setup(){
  size(1500, 900);
  for (int i = 0; i<sNum; i++){
    sList.add (new Star());
  }
  sList.add((int)(Math.random()*500), new Ship());
  sList.add((int)(Math.random()*500), new Ship());
  sList.add((int)(Math.random()*500), new Ship());
}

void draw(){
   background(0);
  for (Star s: sList) {
    s.move();
    s.show();
  }
}
class Ship extends Star{
  Ship(){
    sz = 50;
    sp= .5;
    cl = color (115, 70, 200);
  }
}
class Star{
  int sz, cl;
  double x, y, an, sp;
  Star(){
    sz = 8;
    cl = color((int)(Math.random()*256), (int)(Math.random()*256),(int)(Math.random())*256);
    x = width/2;
    y = height/2;
    an=Math.random()*2*Math.PI;
    sp = Math.random()*10;
  }
  void move(){
    //x+=(int)(Math.random()*11)-5;
    //y+=(int)(Math.random()*11)-5;
    x+=Math.cos(an)*sp;
    y+=Math.sin(an)*sp;
  }
  void show(){
    fill(cl);
    ellipse((float)x,(float)y,(float)sz,(float)sz);
  }
}
