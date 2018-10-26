boolean isMouseInside(float x, float y, float sx, float sy) {
  boolean isInside;
  if (mouseX > x && mouseX < x + sx && mouseY > y && mouseY < y + sy) {
    isInside = true;
  } else {
    isInside = false;
  }
  return isInside;
}

boolean pressed = false;

void sceneButton(float x, float y, float sx, float sy, float scenes, String text) {
  if (isMouseInside(x, y, sx, sy)) {
    fill(150);
    if (mousePressed && !pressed) {
      scene = scenes;
      pressed = true;
    } else if(pressed && !mousePressed){
      pressed = false;
    }
  } else {
    fill(200);
  }
    rect(x, y, sx, sy);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(20);
    text(text, x + sx / 2, y + sy / 2);
}
