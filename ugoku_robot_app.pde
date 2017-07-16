float rotX=-0.5;
float rotY= 0.5;
float posX=1, posY=60, posZ=60;
float alpha, beta, gamma;
PShape base, shoulder, upArm, loArm, end;

float[] Xsphere = new float[99];
float[] Ysphere = new float[99];
float[] Zsphere = new float[99];

PImage tex;

void setup() {
  size(1024, 768, P3D);
  orientation(LANDSCAPE);
  
  base     = loadShape("r5.obj");
  shoulder = loadShape("r1.obj");
  upArm    = loadShape("r2.obj");
  loArm    = loadShape("r3.obj");
  end      = loadShape("r4.obj");
  
  tex = loadImage("kao.png");
  
  noStroke();
  colorMode(HSB,360,100,100,100);
  fill(0,140,190,80);
  noCursor();
}

void draw () 
{
  //背景絵画
  background(0);
  
  //霊魂絵画
  for(int i=0 ; i < ball.size()-1 ; i++){
    Ball b = (Ball)ball.get(i);
    b.draw(i);
  }
  
  //ロボット絵画
  writePos();
  translate(width/2, height/2);
  scale(-4);
  
  translate(0, -40, 50);
  smooth();
  lights();
  directionalLight(51, 102, 126, -1, 0, 0);
  
  for (int i=0; i< Xsphere.length - 1; i++) {
    Xsphere[i] = Xsphere[i + 1];
    Ysphere[i] = Ysphere[i + 1];
    Zsphere[i] = Zsphere[i + 1];
  }
  
  Xsphere[Xsphere.length - 1] = posX;
  Ysphere[Ysphere.length - 1] = posY;
  Zsphere[Zsphere.length - 1] = posZ;
  
  create_robot();
}