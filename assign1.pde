int a=20; //enemy x-start
int b,c,d,e,f; //fighter & treasure location
int l; //hp bar length
int bgx1, bgx2;

PImage bg1,bg2;
PImage img1,img2,img3,img4;
void setup () {
  size(640,480) ;
  //background loading
  bg1=loadImage("img/bg1.png");
  bg1.resize(640,480);
  bg2=loadImage("img/bg2.png");
  bg2.resize(640,480);

  //hp bar
  l=floor(random(23,190));
  
  //enemy y
  b=floor(random(0,419));
  
  //treasure locate
  e=floor(random(0,599));
  f=floor(random(0,439));
  
  //loading fighter & treasure
  img3=loadImage("img/fighter.png");
  img4=loadImage("img/treasure.png");
  
  //fighter
  image(img3,589,215);
  //treasure
  image(img4,e,f);
  
}

void draw() {
  //speed setting
  int speedX;
  speedX=floor(random(0,5));
  a+=speedX;
  
  //scrolling background
  bgx1=bgx1%1280;
  bgx1++;
  image(bg1,bgx1,0);
  image(bg2,bgx1-640,0);
  image(bg1,bgx1-1280,0);
  
  //loading hp & enemy
  img1=loadImage("img/hp.png");
  img2=loadImage("img/enemy.png");
  
  //hp bar
  strokeWeight(25);
  stroke(255,0,0);
  line(22,15,l,15);
  //hp
  image(img1,0,0);
  //fighter
  image(img3,589,215);
  //treasure
  image(img4,e,f);
  //enemy x
  a%=640;
  image(img2,a,b);
  
}
