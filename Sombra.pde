PImage imgD;
PImage imgU;

float angle;

float bit = 3.14 * 2 / 128;

float step = bit;

float fps = 1;

void setup() {
  
  imageMode(CENTER);
  
  size(1000, 707);

  
  imgD = loadImage("White.png");
  imgU = loadImage("Black.png");
  
  
}

void draw() {
  
  clear();
  
  background(0);
  
  textSize(32);
  fill(255);
  text("FPS: "+fps, 10, 30);
  text("step: "+step, 10, 90);
  
  frameRate(fps);
  
  angle += step; 
  translate(width/2, height/2);
  
  rotate(angle);
  image(imgD, 0, 0, -width/0.8, -height/0.8);  
  
  rotate(-angle);
  image(imgU, 0, 0, -width/0.8, -height/0.8);  
  
  
  
  
  
  
  
}

void keyPressed() {
  if (keyCode == UP) {
    step += bit;    
  }
  if (keyCode == DOWN){
    step -= bit;
  }
  
  
  
  if (keyCode == RIGHT) {
    fps += 1;
  }
  if (keyCode == LEFT){
    fps -= 1;
  }
  
  
  
  if (keyCode == 32){
    step = bit;
    fps = 1;
  }
  
}