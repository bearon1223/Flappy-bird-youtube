float scene = 0;
void scene() {
  if (scene == 0) {
    background(0, 187, 255);
    sceneButton(200, 275, 200, 50, 1, "Play");
    sceneButton(200, 275 + 60, 200, 50, 0.5, "How to Play");
  }
  if (scene == 0.5) {
    background(0);
    fill(255);
    text("Press any key or mouse to jump \n  avoid any obsticals or the ground and space.", 300, 300);
    sceneButton(10, 10, 100, 50, 0, "Back");
  }
  if (scene == 1) {
    background(0, 187, 255);
    pipe1.movement();
    pipe1.render();
    pipe1.collision();
    pipe2.movement();
    pipe2.render();
    pipe2.collision();
    bird.render();
    bird.gravity();
    bird.input();
    textAlign(CORNER, CORNER);
    fill(255);
    textSize(15);
    text(score, 10, 10);
  }
  if (scene == 2) {
    background(255, 50, 50);
    textAlign(CENTER, CENTER);
    fill(255);
    textSize(30);
    text("YOU DIED!", 300, 200);
    sceneButton(250, 300, 100, 50, 0, "Retry");
    pipe1 = new pipe(610, 1, bird);
    pipe2 = new pipe(910, 1, bird);
    bird = new bird(300, 50, 15);
  }
}
