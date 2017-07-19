void create_robot(){
  fill(172, 0, 0);
  stroke(0);
  translate(0, -40, 0);
  shape(base);
  
  fill(172, 199, 242);
  translate(0, 20, 20);
  noStroke();
  directionalLight(255, 255, 0, 1, 1, -1);
  pillar(50, 5, 5);
  
  fill(255, 193, 140);
  translate(-20, 30, 0);
  rotateY(gamma);
  shape(shoulder);

  translate(0, 0, 0);
  rotateY(PI);
  shape(end);

  translate(0, 30, -15);
  rotateY(PI);
  rotateX(alpha);
  shape(upArm);

  translate(-20, 10, 5);
  rotateY(gamma);
  shape(shoulder);

  translate(0, -8, 0);
  rotateY(PI);
  rotateX(beta);
  shape(loArm);
  
  pushMatrix();
  translate(0, 0, 70);
  scale(64, 40, 1);
  texture_back(tex3);
  rotateY(PI);
  rotateX(gamma);
  popMatrix();
  
  translate(0, 20, 0);
  rotateY(PI);
  rotateX(alpha);
  shape(upArm);

  translate(0, 0, 50);
  rotateY(PI);
  rotateX(beta);
  shape(loArm);
  
  pushMatrix();
  translate(40, 0, 57);
  scale(70, 30, 1);
  texture_back(tex2);
  rotateY(PI);
  rotateX(gamma);
  popMatrix();
}