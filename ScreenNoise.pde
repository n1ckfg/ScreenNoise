PImage img;
int sW, sH;
int mode = 0;
boolean cycleModes = false;
float modeDelay = 1;
int startTime = 0;
int bgColor = 0;

void setup() {
  Settings settings = new Settings("settings.txt");
  sW = screen.width;
  sH = screen.height;
  size(sW, sH);
  frameRate(60);
  img = createImage(sW, sH, RGB);
  noCursor();
  if (mode==0) cycleModes = true;
}

void draw() {
  if(cycleModes){
    if(millis() - startTime > modeDelay*1000){
      startTime = millis();
      mode++;
      if(mode>3) mode=0;
    }
  }
  if(mode==0){
    background(127); 
  }else if (mode==1) {
    for (int i=0;i<img.pixels.length;i++) {
      img.pixels[i] = color(random(255), random(255), random(255));
    }
    img.updatePixels();
    imageMode(CORNER);
    image(img, 0, 0);
  }else if (mode==2) {
    background(255);
  }else if (mode==3) {
    bgColor = abs(bgColor-255);
    background(bgColor);
  }
}

