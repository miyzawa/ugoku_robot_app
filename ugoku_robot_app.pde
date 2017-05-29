float rotX=-0.5;
float rotY= 0.5;
PShape base;

void setup(){
  size(1200, 800, OPENGL);
}

void draw(){
  //=======台座=======//
  //背景色
  background(100, 100, 100);
  //調整：滑らかさ、影
  smooth();
  lights();
  //色
  fill(172,0,0);
  //オブジェクトの位置
  translate(width/2, height/2);
  scale(-4);
  translate(0,-40,0);
  //カメラアングル：X軸、Y軸、大きさ
  rotateX(rotX);
  rotateY(rotY);
  stroke(0);
  box(15);
  noStroke();
  directionalLight(255,255,0,1,1,-1);
  pillar(25, 5 , 5);
}

//マウスアクション
void mouseDragged(){
  rotY -= (mouseX - pmouseX) * 0.01;
  rotX -= (mouseY - pmouseY) * 0.01;
}

void pillar(float length, float radius1 , float radius2){
  float x,y,z;
  pushMatrix();
  //上面の作成
  beginShape(TRIANGLE_FAN);
  y = -length / 2;
  vertex(0, y, 0);
  for(int deg = 0; deg <= 360; deg = deg + 10){
    x = cos(radians(deg)) * radius1;
    z = sin(radians(deg)) * radius1;
    vertex(x, y, z);
  }
  endShape();              //底面の作成
  beginShape(TRIANGLE_FAN);
  y = length / 2;
  vertex(0, y, 0);
  for(int deg = 0; deg <= 360; deg = deg + 10){
    x = cos(radians(deg)) * radius2;
    z = sin(radians(deg)) * radius2;
    vertex(x, y, z);
  }
  endShape();
  //側面の作成
  beginShape(TRIANGLE_STRIP);
  for(int deg =0; deg <= 360; deg = deg + 5){
    x = cos(radians(deg)) * radius1;
    y = -length / 2;
    z = sin(radians(deg)) * radius1;
    vertex(x, y, z);
    x = cos(radians(deg)) * radius2;
    y = length / 2;
    z = sin(radians(deg)) * radius2;
    vertex(x, y, z);
  }
  endShape();
  popMatrix();
}