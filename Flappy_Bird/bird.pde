class bird {
  float x, y, g = 0.2, r;
  bird(float xb, float yb, float rb){
    x = xb;
    y = yb;
    r = rb;
    
  }
  
  void render(){
    fill(255, 255, 100);
    ellipse(x, y, r, r);
  }
  
  void gravity() {
    g += 0.2;
    y += g;
    if(y > height){
      scene = 2;
    }
    if(y < 0){
      scene = 2;
    }
  }
  
  void input() {
    if((keyPressed || mousePressed) && g > 1){
      g = -4;
    }
  }
}
