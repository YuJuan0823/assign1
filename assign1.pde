int a=20; //enemy x-start
int b,c,d,e,f; //fighter & treasure location
int l; //hp bar length

PImage bg1,bg2;
PImage img1,img2,img3,img4;
void setup () {
  size(640,480) ;
  //background loading
  bg1=loadImage("bg1.png");
  bg1.resize(640,480);
  bg2=loadImage("bg2.png");
  bg2.resize(640,480);
  
  //hp bar
  l=floor(random(0,200));
  
  //enemy y
  b=floor(random(0,419));
  
  //fighter locate
  c=floor(random(0,589));
  d=floor(random(0,429));
  
  //treasure locate
  e=floor(random(0,599));
  f=floor(random(0,439));
  
  //loading fighter & treasure
  img3=loadImage("fighter.png");
  img4=loadImage("treasure.png");
  
  //fighter
  image(img3,c,d);
  //treasure
  image(img4,e,f);
  
}

void draw() {
  //loading hp bar & enemy
  img1=loadImage("hp.png");
  img2=loadImage("enemy.png");

  //speed setting
  int speedX;
  speedX=floor(random(0,5));
  a+=speedX;
  
  //scrolling background
  background(bg1);
  set(-a,0,bg1);
  set(640-a,0,bg2);
  
  //hp bar
  strokeWeight(30);
  stroke(255,0,0);
  line(25,10,l,10);
  //hp
  image(img1,0,0);
  //fighter
  image(img3,c,d);
  //treasure
  image(img4,e,f);
  //enemy x
  a%=640;
  image(img2,a,b);
  
}
