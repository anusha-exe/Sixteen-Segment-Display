// This programme is based on The Coding Train video on Seven Segment Display

//A, B, C,...Z.
int nums[]={
  0xF3C0,
  0xFC52,
  0xCF00,
  0xFC12,
  0xCFC0,
  0xC3C0,
  0xDF40,
  0x33C0,
  0xCC12,
  0x3E00,
  0x389,
  0xF00,
  0x3328,
  0x3321,
  0xFF00,
  0xE3C0,
  0xFF01,
  0xE3C1,
  0xDDC0,
  0xC012,
  0x3F00,
  0x3021,
  0x3305,
  0x2D,
  0x2A,
  0xCC0C
};

int index=0;

void setup (){
  size(400, 400);
  frameRate(1);
}

void draw(){
  background (255);
  sixteen_seg(nums[index], 100, 50, 70, 20);        // 3 : 3 : 7 : 2
  index++;
  if(index==26)
  index=0;
  }
  
int getColor(int value, int shift){
  int alpha=255*(value>>shift & 1);
  if(alpha == 0)alpha = 50;
  int g = 0;
  int b = 0;
  int r = 220;
  return color(r, g, b, alpha);
  
}  
  
void sixteen_seg(int val, int x, int y, int l, int b){
  
  noStroke();
 
  //A1
  fill(getColor(val, 15));
  rect(x, y, l - b/4, b, 50);
  //A2
  fill(getColor(val,14));
  rect(x + l - b/4, y, l - b/4, b, 50);
  //B
  fill(getColor(val,13));
  rect(x + 2*l - b, y + b/2, b, 2*l, 50);
  //C
  fill(getColor(val,12));
  rect(x + 2*l - b, y + l + b/2 + l, b, 2*l, 50);
  //D1
  fill(getColor(val,11));
  rect(x + l - b/4, y + 2*l + 2*l, l - b/4, b, 50);
  //D2
  fill(getColor(val,10));
  rect(x, y + 2*l + 2*l, l - b/4, b, 50);
  //E
  fill(getColor(val,9));
  rect(x - b/2, y + 2*l + b/2, b, 2*l, 50);
  //F
  fill(getColor(val,8));
  rect(x - b/2, y + b/2, b, 2*l, 50);
  //G1
  fill(getColor(val,7));
  rect(x, y + 2*l, l - b/4, b, 50);
  //G2
  fill(getColor(val,6));
  rect(x + l - b/4, y + 2*l, l - b/4, b, 50);
  //H
  fill(getColor(val,5));
  beginShape();
  vertex(x + b/2, y + b);
  vertex(x + l - b*0.75, y + 2*l - 2*b);
  vertex(x + l - b*0.75, y + 2*l);
  vertex(x + b/2, y + 3*b);
  endShape();
  //I
  fill(getColor(val,4));
  rect(x + l - b*0.75, y + b/2, b, 2*l, 50);
  //J
  fill(getColor(val,3));
  beginShape();
  vertex(x + 2*l - b, y + b);
  vertex(x + 2*l - b, y + 3*b);
  vertex(x + l + b/4, y + 2*l);
  vertex(x + l + b/4, y + 2*l - 2*b);
  endShape();
  //K
  fill(getColor(val,2));
  beginShape();
  vertex(x + b/2, y + 4*l - 2*b);
  vertex(x + b/2, y + 4*l);
  vertex(x + l - b*0.75, y + (2*l) + 3*b);
  vertex(x + l - b*0.75, y + (2*l) + b);
  endShape();
  //L
  fill(getColor(val,1));
  rect(x + l - b*0.75, y + 2*l + b/2, b, 2*l, 50);
  //M
  fill(getColor(val,0));
  beginShape();
  vertex(x + l - b*0.75 + b, y + 2*l + b);
  vertex(x + l - b*0.75 + b, y + 2*l + 3*b);
  vertex(x + 2*l - b, y + 4*l);
  vertex(x + 2*l - b, y + 4*l - 2*b);
  endShape();
  
}
