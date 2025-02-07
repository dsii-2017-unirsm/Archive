// Francesco Paolini @francescopaolini © 2017 MIT License
// 10 print porting to P5js
// Made for DSII2017 lab @UniRSM

float x = 0;
float y = 0;
int[] dimensioni = { 20, 40, 80, 100};
int D;
float x1 = 10;
float y1 = 10;
float x3 = 10;
float y3 = 10;
float x4 = 10;
float y4 = 10;

void setup() {
  size(1310, 700);
  background(255);
  frameRate(60);

float i = int(random(4));
D = dimensioni[int(i)];

  y1 = (height-D);
  x3 = (width-D);
  y3 = (height-D);
  x4 = (width-D);
}


void  draw() {

//forma1();
  forma2();
  forma3();
  forma4();
}


//------------------------------forma 1------------------------------//
void  forma1() {
  fill(random(255,40));
  noStroke();
  rect(x, y, D, D);

  x = x + D;
  if (x >= width) {
    x=0;
    y = y+D;
  }
  if (y >= height) {
    background(random(255));
    x=0;
    y=0;
  }
}
//------------------------------forma 2------------------------------//
void forma2() {
  fill(100, 40);
  noStroke();
ellipse(x3, y3, D, D);


  if (y1 <= 0) {
    y1 = (height);
    x1 = x1+D;
  }
  y1 = y1 - D;

  if (x1 >= width ) {
    background(255);
    x1 = 0;
    y1 = (height-D);
  }
}
//------------------------------forma 3------------------------------//
void forma3() {
  fill(100, 40);
  noStroke();
  ellipse(x3, y3, D, D);
  x3 = x3 - D;
  if (x3 < 0) {
    x3 = width-D;
    y3 = y3-D;
  }

  if (y3 <= 0-D) {
    background(random(255));
    x3 = (width-D);
    y3 = (height-D);
  }
}
//------------------------------forma 4------------------------------//
void forma4() {
  fill(random(255));
  noStroke();
triangle(x4, y4+D, x4+D/2, y4, x4+D, y4+D);

  y4 = y4 + D;
  if (y4 >= height) {
    y4 = 0;
    x4 = x4 -D;
  }

  if (x4 <= 0-D) {
    setup();
    background(random(255));
    x4 = (width-D);
    y4 = 0;
  }
}


// se premi "s" salva come immagine
void keyPressed() {

  if (key == 'a') {
    noLoop();
  } else {
  }
  if (key == 's') {  // se premo f lo fermo
    saveFrame("variazione-######.png");     //salva il frame, "fai un screenshot della finestra"
  } else {
  }
  if (key == 'd') { // se premo d riparte
    loop();
  } else {
  }if (key == 'q') { // se premo d riparte
    background(255);
  }
}
