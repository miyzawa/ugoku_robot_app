
//void setup() {
//  size(1024, 768, OPENGL);
  
//  base = loadShape("r5.obj");
//  shoulder = loadShape("r1.obj");
//  upArm = loadShape("r2.obj");
//  loArm = loadShape("r3.obj");
//  end = loadShape("r4.obj");
  
//  //tex[0] = loadImage("danberu0.png");  
//  //tex[1] = loadImage("danberu1.png");
//  //tex[2] = loadImage("danberu2.png");
//  //tex[3] = loadImage("danberu3.png");
//  //tex[4] = loadImage("danberu4.png");
//  //tex[5] = loadImage("danberu5.png");
  
//  orientation(LANDSCAPE);
//  tex[0] = loadImage("00.PNG");
//  tex[1] = loadImage("01.PNG");
//  tex[2] = loadImage("02.PNG");
//  tex[3] = loadImage("03.PNG");
//  tex[4] = loadImage("04.PNG");
//  tex[5] = loadImage("05.PNG");
  
//  ps = new ParticleSystem(100);
//}

//void draw() {
//  writePos();
//  //=======台座=======//
//  //背景色
//  background(100, 100, 100);
//  //オブジェクトの位置
//  translate(width/2, height/2);
//  scale(-4);
  
//  background(0);
//  ps.update();
//  ps.display();
  
//  ps.setEmitter(mouseX,mouseY); 
  
//  translate(0, -40, 50);
//  //土台：滑らかさ、影、色
//  smooth();
//  lights();
//  directionalLight(51, 102, 126, -1, 0, 0);
  
//  for (int i=0; i< Xsphere.length - 1; i++) {
//    Xsphere[i] = Xsphere[i + 1];
//    Ysphere[i] = Ysphere[i + 1];
//    Zsphere[i] = Zsphere[i + 1];
//  }
  
//  Xsphere[Xsphere.length - 1] = posX;
//  Ysphere[Ysphere.length - 1] = posY;
//  Zsphere[Zsphere.length - 1] = posZ;
  
//  for (int i=0; i < Xsphere.length; i++) {
//   pushMatrix();
//   translate(-Ysphere[i]+40, -Zsphere[i]+90, -Xsphere[i]);
//   fill (#D003FF, 25);
//   sphere (float(i) / 10);
//   popMatrix();
//  }
  
//  fill(172, 0, 0);
//  stroke(0);
//  translate(0, -40, 0);
//  shape(base);
  
//  //台１★
//  fill(172, 199, 242);
//  translate(0, 20, 20);
//  noStroke();
//  directionalLight(255, 255, 0, 1, 1, -1);
//  pillar(50, 5, 5);
  
//  //アーム
//  translate(-20, 30, 0);
//  rotateY(gamma);
//  shape(shoulder);

//  translate(0, 0, 0);
//  rotateY(PI);
//  shape(end);

//  translate(0, 30, -15);
//  rotateY(PI);
//  rotateX(alpha);
//  shape(upArm);

//  translate(-20, 10, 5);
//  rotateY(gamma);
//  shape(shoulder);

//  translate(0, -8, 0);
//  rotateY(PI);
//  rotateX(beta);
//  shape(loArm);

//  translate(0, 20, 0);
//  rotateY(PI);
//  rotateX(alpha);
//  shape(upArm);

//  translate(0, 0, 50);
//  rotateY(PI);
//  rotateX(beta);
//  shape(loArm);
//}

//void pillar(float length, float radius1, float radius2) {
//  float x, y, z;
//  pushMatrix();
//  //上面の作成
//  beginShape(TRIANGLE_FAN);
//  y = -length / 2;
//  vertex(0, y, 0);
//  for (int deg = 0; deg <= 360; deg = deg + 10) {
//    x = cos(radians(deg)) * radius1;
//    z = sin(radians(deg)) * radius1;
//    vertex(x, y, z);
//  }
//  endShape();              //底面の作成
//  beginShape(TRIANGLE_FAN);
//  y = length / 2;
//  vertex(0, y, 0);
//  for (int deg = 0; deg <= 360; deg = deg + 10) {
//    x = cos(radians(deg)) * radius2;
//    z = sin(radians(deg)) * radius2;
//    vertex(x, y, z);
//  }
//  endShape();
//  //側面の作成
//  beginShape(TRIANGLE_STRIP);
//  for (int deg =0; deg <= 360; deg = deg + 5) {
//    x = cos(radians(deg)) * radius1;
//    y = -length / 2;
//    z = sin(radians(deg)) * radius1;
//    vertex(x, y, z);
//    x = cos(radians(deg)) * radius2;
//    y = length / 2;
//    z = sin(radians(deg)) * radius2;
//    vertex(x, y, z);
//  }
//  endShape();
//  popMatrix();
//}

 //Particles, by Daniel Shiffman.