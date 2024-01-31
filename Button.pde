class Button {
  PVector pos = new PVector(0,0);
  float width = 0;
  float height = 0;
  boolean pressed = false;
  boolean clicked = false;
  boolean filled = false;
  int state = 0;
  int group1state = 0;
  int group2state = 0;
  int group3state = 0;
  int group4state = 0;
  int group5state = 0;
  int group6state = 0;
  int group7state = 0;
  int group8state = 0;
  int group9state = 0;

  //constructor to create a stroke button
  Button (int x, int y, int w, int h) {
    pos.x = x;
    pos.y = y;
    width = w;
    height = h;
    state = 0;
  }
  
  int click(int posX, int posY, int count) {
    if (posX >= pos.x && posX <= pos.x + width && posY >= pos.y && posY <= pos.y + height) {
      
      if (state==0 && count%2==0) {
        if (group1state==2) {
          count1++;
        }
        if (group2state==2) {
          count2++;
        }
        if (group3state==2) {
          count3++;
        }
        if (group4state==2) {
          count4++;
        }
        if (group5state==2) {
          count5++;
        }
        if (group6state==2) {
          count6++;
        }
        if (group7state==2) {
          count7++;
        }
        if (group8state==2) {
          count8++;
        }
        if (group9state==2) {
          count9++;
        }

        if ((count1==1&&group1state==2)||(count2==1&&group2state==2)||
        (count3==1&&group3state==2)||(count4==1&&group4state==2)||
        (count5==1&&group5state==2)||(count6==1&&group6state==2)||
        (count7==1&&group7state==2)||(count8==1&&group8state==2)||
        (count9==1&&group9state==2)) {
          count = count + 2;
            if (count%2!=0) {
              state = 1;//red
            }
            else {
              state = 2;//blue
            }
         }
         else {
           state = 1;
           count++;
         }
       }
       
       else if (state==0 && count%2!=0) {
        if (group1state==1) {
          count1++;
        }
        if (group2state==1) {
          count2++;
        }
        if (group3state==1) {
          count3++;
        }
        if (group4state==1) {
          count4++;
        }
        if (group5state==1) {
          count5++;
        }
        if (group6state==1) {
          count6++;
        }
        if (group7state==1) {
          count7++;
        }
        if (group8state==1) {
          count8++;
        }
        if (group9state==1) {
          count9++;
        }

        if ((count1==1&&group1state==1)||(count2==1&&group2state==1)||
        (count3==1&&group3state==1)||(count4==1&&group4state==1)||
        (count5==1&&group5state==1)||(count6==1&&group6state==1)||
        (count7==1&&group7state==1)||(count8==1&&group8state==1)||
        (count9==1&&group9state==1)) {
          count = count + 2;
            if (count%2==0) {
              state = 2;//blue
            }
            else {
              state = 1;//red
            }
         }
         else {
           state = 2;
           count++;
         }
       }
      
       else if (state==1||state==2) {      
       }
       
    }

     return count;
  }
  
  void changeColor() {
    if (state==1) {
      stroke(245,71,71);
      fill(245,71,71);
      rect(pos.x,pos.y,width,height);
      filled = true;
    }
    else if (state==2) {
      stroke(86,136,200);
      fill(86,136,200);
      rect(pos.x,pos.y,width,height);
      filled = true;
    }
    else if (state==0) {
    }
  }
  
  
  void winSquare(int count) {
    if ((group1state==0||group2state==0||group3state==0||group4state==0||group5state==0||
    group6state==0||group7state==0||group8state==0||group9state==0)&&(count%2!=0)) {
      //red wins square
      if (group1state==0&&stroke[0].filled==true&&stroke[3].filled==true&&
      stroke[4].filled==true&&stroke[7].filled==true) {
        noStroke();
        fill(251,172,168);
        rect(145,145,100,100);
        for (int g=0; g<24; g++) {
          stroke[g].group1state = 1;
        }
        player[0]++;
      }
      else if (group2state==0&&stroke[1].filled==true&&stroke[4].filled==true&&
      stroke[5].filled==true&&stroke[8].filled==true) {
        noStroke();
        fill(251,172,168);
        rect(255,145,100,100);
        for (int g=0; g<24; g++) {
          stroke[g].group2state = 1;
        }
        player[0]++;
      }
      else if (group3state==0&&stroke[2].filled==true&&stroke[5].filled==true&&
      stroke[6].filled==true&&stroke[9].filled==true) {
        noStroke();
        fill(251,172,168);
        rect(365,145,100,100);
        for (int g=0; g<24; g++) {
          stroke[g].group3state = 1;
        }
        player[0]++;
      }
      else if (group4state==0&&stroke[7].filled==true&&stroke[10].filled==true&&
      stroke[11].filled==true&&stroke[14].filled==true) {
        noStroke();
        fill(251,172,168);
        rect(145,255,100,100);
        for (int g=0; g<24; g++) {
          stroke[g].group4state = 1;
        }
        player[0]++;
      }
      else if (group5state==0&&stroke[8].filled==true&&stroke[11].filled==true&&
      stroke[12].filled==true&&stroke[15].filled==true) {
        noStroke();
        fill(251,172,168);
        rect(255,255,100,100);
        for (int g=0; g<24; g++) {
          stroke[g].group5state = 1;
        }
        player[0]++;
      }
      else if (group6state==0&&stroke[9].filled==true&&stroke[12].filled==true&&
      stroke[13].filled==true&&stroke[16].filled==true) {
        noStroke();
        fill(251,172,168);
        rect(365,255,100,100);
        for (int g=0; g<24; g++) {
          stroke[g].group6state = 1;
        }
        player[0]++;
      }
      else if (group7state==0&&stroke[14].filled==true&&stroke[17].filled==true&&
      stroke[18].filled==true&&stroke[21].filled==true) {
        noStroke();
        fill(251,172,168);
        rect(145,365,100,100);
        for (int g=0; g<24; g++) {
          stroke[g].group7state = 1;
        }
        player[0]++;
      }
      else if (group8state==0&&stroke[15].filled==true&&stroke[18].filled==true&&
      stroke[19].filled==true&&stroke[22].filled==true) {
        noStroke();
        fill(251,172,168);
        rect(255,365,100,100);
        for (int g=0; g<24; g++) {
          stroke[g].group8state = 1;
        }
        player[0]++;
      }
      else if (group9state==0&&stroke[16].filled==true&&stroke[19].filled==true&&
      stroke[20].filled==true&&stroke[23].filled==true) {
        noStroke();
        fill(251,172,168);
        rect(365,365,100,100);
        for (int g=0; g<24; g++) {
          stroke[g].group9state = 1;
        }
        player[0]++;
      }
    }
    
    else if ((group1state==0||group2state==0||group3state==0||group4state==0||group5state==0||
    group6state==0||group7state==0||group8state==0||group9state==0)&&(count%2==0)) {
      //blue wins square
      if (group1state==0&&stroke[0].filled==true&&stroke[3].filled==true&&
      stroke[4].filled==true&&stroke[7].filled==true) {
        noStroke();
        fill(203,220,231);
        rect(145,145,100,100);
        for (int g=0; g<24; g++) {
          stroke[g].group1state = 2;
        }
        player[1]++;
      }
      else if (group2state==0&&stroke[1].filled==true&&stroke[4].filled==true&&
      stroke[5].filled==true&&stroke[8].filled==true) {
        noStroke();
        fill(203,220,231);
        rect(255,145,100,100);
        for (int g=0; g<24; g++) {
          stroke[g].group2state = 2;
        }
        player[1]++;
      }
      else if (group3state==0&&stroke[2].filled==true&&stroke[5].filled==true&&
      stroke[6].filled==true&&stroke[9].filled==true) {
        noStroke();
        fill(203,220,231);
        rect(365,145,100,100);
        for (int g=0; g<24; g++) {
          stroke[g].group3state = 2;
        }
        player[1]++;
      }
      else if (group4state==0&&stroke[7].filled==true&&stroke[10].filled==true&&
      stroke[11].filled==true&&stroke[14].filled==true) {
        noStroke();
        fill(203,220,231);
        rect(145,255,100,100);
        for (int g=0; g<24; g++) {
          stroke[g].group4state = 2;
        }
        player[1]++;
      }
      else if (group5state==0&&stroke[8].filled==true&&stroke[11].filled==true&&
      stroke[12].filled==true&&stroke[15].filled==true) {
        noStroke();
        fill(203,220,231);
        rect(255,255,100,100);
        for (int g=0; g<24; g++) {
          stroke[g].group5state = 2;
        }
        player[1]++;
      }
      
      else if (group6state==0&&stroke[9].filled==true&&stroke[12].filled==true&&
      stroke[13].filled==true&&stroke[16].filled==true) {
        noStroke();
        fill(203,220,231);
        rect(365,255,100,100);
        for (int g=0; g<24; g++) {
          stroke[g].group6state = 2;
        }
        player[1]++;
      }
      else if (group7state==0&&stroke[14].filled==true&&stroke[17].filled==true&&
      stroke[18].filled==true&&stroke[21].filled==true) {
        noStroke();
        fill(203,220,231);
        rect(145,365,100,100);
        for (int g=0; g<24; g++) {
          stroke[g].group7state = 2;
        }
        player[1]++;
      }
      else if (group8state==0&&stroke[15].filled==true&&stroke[18].filled==true&&
      stroke[19].filled==true&&stroke[22].filled==true) {
        noStroke();
        fill(203,220,231);
        rect(255,365,100,100);
        for (int g=0; g<24; g++) {
          stroke[g].group8state = 2;
        }
        player[1]++;
      }
      else if (group9state==0&&stroke[16].filled==true&&stroke[19].filled==true&&
      stroke[20].filled==true&&stroke[23].filled==true) {
        noStroke();
        fill(203,220,231);
        rect(365,365,100,100);
        for (int g=0; g<24; g++) {
          stroke[g].group9state = 2;
        }
        player[1]++;
      }
    }
  }
  
}
