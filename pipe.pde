class pipe {
  float x, y, d, s, xbs;
  bird b;
  pipe (float xb, float speedb, bird bb) {
    x = xb;
    y = 0;
    s = speedb;
    b = bb;
    d = random(10, 450);
    xbs = xb;
  }

  void render() {
    fill(56);
    rect(x, y, 5, d);
    rect(x, d + 100, 5, height);
  }

  void movement() {
    x -= s;
    if (x < -10) {
      x = 610;
      d = random(10, 450);
    }
  }

  void collision() {
    if (b.x == x && b.y >= d && b.y <= d + 100) {
      score++;
    }
    if(b.x == x && !(b.y >= d && b.y <= d + 100)){
      scene = 2;
    }
  }
}
/*
|
 
 |
 |
 |
 */
