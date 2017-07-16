ArrayList ball = new ArrayList();
int _ballCount = 80;
int hitodama = 1;

class Ball{
  float x = mouseX;
  float y = mouseY;

  void draw(int r){
    r %= _ballCount;
    fill(map(r,0,_ballCount,300,250),70,100,30);
    ellipse(x,y,r/2,r/2);
  }
}