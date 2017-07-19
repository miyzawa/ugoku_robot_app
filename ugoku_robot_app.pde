float rotX=-0.5;
float rotY= 0.5;
float posX=1, posY=60, posZ=60;
float alpha, beta, gamma;
PShape base, shoulder, upArm, loArm, end;

float[] Xsphere = new float[99];
float[] Ysphere = new float[99];
float[] Zsphere = new float[99];

PImage tex;
PImage tex2;
PImage tex3;
PImage tex4;

void setup() {
  size(1024, 768, P3D);
  orientation(LANDSCAPE);
  
  base     = loadShape("r5.obj");
  shoulder = loadShape("r1.obj");
  upArm    = loadShape("r2.obj");
  loArm    = loadShape("r3.obj");
  end      = loadShape("r4.obj");
  
  tex = loadImage("usagi.png");
  tex2 = loadImage("ken.png");
  tex3 = loadImage("tate.png");
  tex4 = loadImage("siro.png");
  
  textureMode(NORMAL);
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
  
  //城絵画
  pushMatrix();
  translate(0, 70, 164);
  scale(500, 250, 1);
  texture_back(tex4);
  popMatrix();
  
   //うさぎ絵画
  stroke(0);
  pushMatrix();
  translate(-100, -20, 100);
  scale(30, 42, 0);
  texture_back(tex);
  popMatrix();
  
  create_robot();
}