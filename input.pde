void mousePressed(){
  hitodama++;
}

void keyPressed(){
  hitodama=1;
  ball.clear();
}
void mouseMoved(){

  ball.add(new Ball());
  if(ball.size() > _ballCount*hitodama){
    ball.remove(0);
  }
}