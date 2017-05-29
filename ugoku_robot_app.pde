void setup(){
  size(1200, 800, OPENGL);
}

void draw(){  
  //背景色
  background(100, 100, 100);
  
  //調整：滑らかさ、影
  smooth();
  lights();
  
  //色
  fill(172,0,0);
  
  //オブジェクトの位置
  translate(width/2, height/2);
  
  //カメラアングル：X軸、Y軸、距離
  rotateX(-0.25);
  rotateY(0.5);
  box(200);
}