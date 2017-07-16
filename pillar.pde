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