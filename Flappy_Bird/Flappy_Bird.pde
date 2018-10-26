float score = 0;

void setup(){
  size(600, 600);
  surface.setTitle("Flappy Bird");
}

bird bird = new bird(300, 50, 15);
pipe pipe1 = new pipe(610, 1, bird);
pipe pipe2 = new pipe(910, 1, bird);

void draw() {
 scene();
}
