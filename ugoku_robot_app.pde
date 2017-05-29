float rotX=-0.5;
float rotY= 0.5;
float posX=1, posY=60, posZ=60;
float alpha, beta, gamma;
PShape base, shoulder, upArm, loArm, end;

float[] Xsphere = new float[99];
float[] Ysphere = new float[99];
float[] Zsphere = new float[99];

void setup() {
  size(1200, 800, OPENGL);
  base = loadShape("r5.obj");
  shoulder = loadShape("r1.obj");
  upArm = loadShape("r2.obj");
  loArm = loadShape("r3.obj");
  end = loadShape("r4.obj");
}

void draw() {
  writePos();
  //=======台座=======//
  //背景色
  background(100, 100, 100);
  //オブジェクトの位置
  translate(width/2, height/2);
  scale(-4);
  translate(0, -40, 0);
  rotateX(rotX);
  rotateY(rotY);
  //土台：滑らかさ、影、色
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
  
  for (int i=0; i < Xsphere.length; i++) {
   pushMatrix();
   translate(-Ysphere[i]+40, -Zsphere[i]+90, -Xsphere[i]);
   fill (#D003FF, 25);
   sphere (float(i) / 10);
   popMatrix();
  }
  
  fill(172, 0, 0);
  stroke(0);
  translate(0, -40, 0);
  shape(base);
  //台１
  fill(172, 199, 242);
  translate(0, 14, 0);
  noStroke();
  directionalLight(255, 255, 0, 1, 1, -1);
  pillar(50, 5, 5);
  //台２
  translate(0, 50, 0);
  noStroke();
  directionalLight(255, 255, 0, 1, 1, -1);
  pillar(50, 5, 5);

  //アーム
  translate(0, 4, 0);
  rotateY(gamma);
  shape(shoulder);

  translate(0, 0, 0);
  rotateY(PI);
  shape(end);

  translate(0, 25, 0);
  rotateY(PI);
  rotateX(alpha);
  shape(upArm);

  translate(0, 4, 0);
  rotateY(gamma);
  shape(shoulder);

  translate(0, 0, 0);
  rotateY(PI);
  rotateX(beta);
  shape(loArm);

  translate(0, 20, 0);
  rotateY(PI);
  rotateX(alpha);
  shape(upArm);

  translate(0, 0, 50);
  rotateY(PI);
  rotateX(beta);
  shape(loArm);

  translate(0, 0, -5);
  rotateY(PI);
  shape(end);

}

//マウスアクション
void mouseDragged() {
  rotY -= (mouseX - pmouseX) * 0.01;
  rotX -= (mouseY - pmouseY) * 0.01;
}

void pillar(float length, float radius1, float radius2) {
  float x, y, z;
  pushMatrix();
  //上面の作成
  beginShape(TRIANGLE_FAN);
  y = -length / 2;
  vertex(0, y, 0);
  for (int deg = 0; deg <= 360; deg = deg + 10) {
    x = cos(radians(deg)) * radius1;
    z = sin(radians(deg)) * radius1;
    vertex(x, y, z);
  }
  endShape();              //底面の作成
  beginShape(TRIANGLE_FAN);
  y = length / 2;
  vertex(0, y, 0);
  for (int deg = 0; deg <= 360; deg = deg + 10) {
    x = cos(radians(deg)) * radius2;
    z = sin(radians(deg)) * radius2;
    vertex(x, y, z);
  }
  endShape();
  //側面の作成
  beginShape(TRIANGLE_STRIP);
  for (int deg =0; deg <= 360; deg = deg + 5) {
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