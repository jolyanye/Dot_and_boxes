Button[] stroke;
static int counter = 0;
static int count1 = 0;
static int count2 = 0;
static int count3 = 0;
static int count4 = 0;
static int count5 = 0;
static int count6 = 0;
static int count7 = 0;
static int count8 = 0;
static int count9 = 0;
int[] player;

void setup() {
  size(850,550);
  
  //title
  fill(255,255,255);
  rect(180,20,490,60);
  textSize(55);
  fill(0);
  text("Dots and Boxes",255,70);
  
  //RECTANGLE BOARD
  fill(255,255,255);
  stroke(0,0,0);
  rect(100,100,410,410);
  //circle colour
  fill(58,59,60);
  stroke(58,59,60);
  
  int[] pos = new int[2];
    pos[0] = 140;
    pos[1] = 20;
    
   for (int i = 0; i < 16; i++) {
     for (int a = 0; a < 4; a++) {
       if (i < 4) {
         ellipse(pos[0],pos[0]+110*a,pos[1],pos[1]);
       }
       else if (i >= 4 && i < 9) {
         ellipse(pos[0]+110,pos[0]+110*a,pos[1],pos[1]);
       }
       else if (i >= 9 && i < 14) {
         ellipse(pos[0]+220,pos[0]+110*a,pos[1],pos[1]);
       }
       else {
         ellipse(pos[0]+330,pos[0]+110*a,pos[1],pos[1]);
       }
     }
   }
 
  //set up buttons
  stroke = new Button[24];
    stroke[0] = new Button(150,135,90,10);
    stroke[1] = new Button(260,135,90,10);
    stroke[2] = new Button(370,135,90,10);
    stroke[3] = new Button(135,150,10,90);
    stroke[4] = new Button(245,150,10,90);
    stroke[5] = new Button(355,150,10,90);
    stroke[6] = new Button(465,150,10,90);
    stroke[7] = new Button(150,245,90,10);
    stroke[8] = new Button(260,245,90,10);
    stroke[9] = new Button(370,245,90,10);
    stroke[10] = new Button(135,260,10,90);
    stroke[11] = new Button(245,260,10,90);
    stroke[12] = new Button(355,260,10,90);
    stroke[13] = new Button(465,260,10,90);
    stroke[14] = new Button(150,355,90,10);
    stroke[15] = new Button(260,355,90,10);
    stroke[16] = new Button(370,355,90,10);
    stroke[17] = new Button(135,370,10,90);
    stroke[18] = new Button(245,370,10,90);
    stroke[19] = new Button(355,370,10,90);
    stroke[20] = new Button(465,370,10,90);
    stroke[21] = new Button(150,465,90,10);
    stroke[22] = new Button(260,465,90,10);
    stroke[23] = new Button(370,465,90,10);
    
  //score array
  player = new int[2];
  player[0] = 0;
  player[1] = 0;
    
  //scoreboard
  fill(255);
  rect(550,100,200,100);
  textSize(30);
  fill(245,71,71);
  text("Player 1: ",560,140);
  fill(86,136,200);
  text("Player 2: ",560,180);
  
}

void draw() {
  if ((mouseX >= 150 && mouseX <= 240 && mouseY >= 135 && mouseY <= 145)||
  (mouseX >= 260 && mouseX <= 350 && mouseY >= 135 && mouseY <= 145)||
  (mouseX >= 370 && mouseX <= 460 && mouseY >= 135 && mouseY <= 145)||
  (mouseX >= 135 && mouseX <= 145 && mouseY >= 150 && mouseY <= 240)||
  (mouseX >= 245 && mouseX <= 255 && mouseY >= 150 && mouseY <= 240)||
  (mouseX >= 355 && mouseX <= 365 && mouseY >= 150 && mouseY <= 240)||
  (mouseX >= 465 && mouseX <= 475 && mouseY >= 150 && mouseY <= 240)||
  (mouseX >= 150 && mouseX <= 240 && mouseY >= 245 && mouseY <= 255)||
  (mouseX >= 260 && mouseX <= 350 && mouseY >= 245 && mouseY <= 255)||
  (mouseX >= 370 && mouseX <= 460 && mouseY >= 245 && mouseY <= 255)||
  (mouseX >= 135 && mouseX <= 145 && mouseY >= 260 && mouseY <= 350)||
  (mouseX >= 245 && mouseX <= 255 && mouseY >= 260 && mouseY <= 350)||
  (mouseX >= 355 && mouseX <= 365 && mouseY >= 260 && mouseY <= 350)||
  (mouseX >= 465 && mouseX <= 475 && mouseY >= 260 && mouseY <= 350)||
  (mouseX >= 150 && mouseX <= 240 && mouseY >= 355 && mouseY <= 365)||
  (mouseX >= 260 && mouseX <= 350 && mouseY >= 355 && mouseY <= 365)||
  (mouseX >= 370 && mouseX <= 460 && mouseY >= 355 && mouseY <= 365)||
  (mouseX >= 135 && mouseX <= 145 && mouseY >= 370 && mouseY <= 460)||
  (mouseX >= 245 && mouseX <= 255 && mouseY >= 370 && mouseY <= 460)||
  (mouseX >= 355 && mouseX <= 365 && mouseY >= 370 && mouseY <= 460)||
  (mouseX >= 465 && mouseX <= 475 && mouseY >= 370 && mouseY <= 460)||
  (mouseX >= 150 && mouseX <= 240 && mouseY >= 465 && mouseY <= 475)||
  (mouseX >= 260 && mouseX <= 350 && mouseY >= 465 && mouseY <= 475)||
  (mouseX >= 370 && mouseX <= 460 && mouseY >= 465 && mouseY <= 475)) {
    cursor(HAND);
  }
  else {
    cursor(ARROW);
  }

  for (int i = 0; i < 24; i++) {
    stroke[i].changeColor();
    stroke[i].winSquare(counter);
    
    fill(255);
    noStroke();
    rect(695,115,25,30);
    textSize(30);
    fill(245,71,71);
    text(player[0],700,140);
    fill(255);
    noStroke();
    rect(695,155,25,30);
    fill(86,136,200);
    text(player[1],700,180);
  }
}
    
void mousePressed() {
  for (int i = 0; i < 24; i++){
    counter = stroke[i].click(mouseX,mouseY,counter);
  }
}
