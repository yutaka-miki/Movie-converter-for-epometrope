String imp;
PImage img;

int count = 1;
int c1 = 0;
int c2 = 0;
int c3 = 0;
PGraphics test;

int w = 240;
int h = 400;

int W = 4;
int H = 4;
//int WH = W*H;
int WH = 16;

String file ="Sample_jpg";

void settings() {
  size(W*w, H*h);
  println("w : "+W*w);
  println("h : "+H*h);
}

void setup() {
  background(0);
}

void draw() {
  //background(0);
  
  c1 = c3 % W;
  c2 = int(c3/W);
  //c3 = count % 18;
  
  imp = file+"/"+count+".jpg"; 
  try{
    img = loadImage(imp);
    image(img,c1*w,c2*h,w,h);
    
  }catch(NullPointerException e){
    //println("The file CHECK" + count + ".jpg is missing or inaccessible");
    c3--;
  }
  
  count++;
  c3++;
  
  if(c3 >= WH){
    c3 = 0;
    save(file+"_alignment/"+int(count/WH)+".jpg");
    println(file+"_alignment/"+int(count/WH)+".jpg");
    background(0);
    
  }
  
}
