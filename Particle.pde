//class Particle {

//  PVector velocity;
//  float lifespan = 255;
  
//  PShape part;
//  float partSize;
  
//  PVector gravity = new PVector(0,0.1);


//  Particle(int i) {
//    partSize = random(50,160);
    
    
//    part = createShape();
//    part.beginShape(QUAD);
//    part.noStroke();
//    part.texture(tex[i]);
//    part.normal(0, 0, 1);
//    part.vertex(-partSize/2, -partSize/2, 0, 0);
//    part.vertex(+partSize/2, -partSize/2, tex[i].width, 0);
//    part.vertex(+partSize/2, +partSize/2, tex[i].width, tex[i].height);
//    part.vertex(-partSize/2, +partSize/2, 0, tex[i].height);
//    part.endShape();
    

    
//    rebirth(width/2,height/2);
//    lifespan = random(255);
//  }

//  PShape getShape() {
//    return part;
//  }
  
//  void rebirth(float x, float y) {
//    float a = random(TWO_PI);
//    float speed = random(0.5,4);
//    velocity = new PVector(cos(a), sin(a));
//    velocity.mult(speed);
//    lifespan = 255;   
//    part.resetMatrix();
//    part.translate(x, y); 
//  }
  
//  boolean isDead() {
//    if (lifespan < 0) {
//     return true;
//    } else {
//     return false;
//    } 
//  }
  

//  public void update() {
//    lifespan = lifespan - 1;
//    velocity.add(gravity);
    
//    part.setTint(color(255,lifespan));
//    part.translate(velocity.x, velocity.y);
//  }
//}