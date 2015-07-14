int n = 1;
int s = 0;
int q = 0;
int p = 0;
int aa = 0;
int ab = 0;
int ac = 0;
int ba = 0;
int bb = 0;
int bc = 0;
int ca = 0;
int cb = 0;
int cc = 0;
PFont f;
void setup(){
  size(600,700);
  background(240);
  f = createFont("Arial",16,true);
}
void draw(){
  textFont(f,16);
  stroke(0);
  strokeWeight(5);
  line(0,0,0,600);
  line(0,0,600,0);
  line(600,0,600,600);
  line(200,0,200,600);
  line(400,0,400,600);
  line(0,200,600,200);
  line(0,400,600,400);
  line(0,600,600,600);
  strokeWeight(15);
  fill(0);
  if (q == 0){
    text("Choose difficulty: Press [s] for simple; press [d] for difficult.",100,650);
    q = 1;
  }
  if (keyPressed == true && key == 's'){
    s = 1;
    n = 0;
    fill(240);
    rectMode(CENTER);
    rect(300,650,600,80);
    fill(0);
    text("Click on a cell to start!",200,630);
  }
  if (keyPressed == true && key == 'd'){
    s = 1;
    fill(240);
    rectMode(CENTER);
    rect(300,650,600,80);
    fill(0);
    text("[Click on a cell to start!]",200,630);
  }
  if (aa == 1 && bb == 1 && cc == 1 || ac == 1 && bb == 1 && ca == 1 || aa == 1 && ba == 1 && ca == 1 || ab == 1 && bb == 1 && cb == 1 || ac == 1 && bc == 1 && cc == 1 || aa == 1 && ab == 1 && ac == 1 || ba == 1 && bb == 1 && bc == 1 || ca == 1 && cb == 1 && cc == 1){
    fill(0);
    text("You win! Congratulations!",200,670);
    s = -1;
  }
  else{
    if (aa == -1 && bb == -1 && cc == -1 || ac == -1 && bb == -1 && ca == -1 || aa == -1 && ba == -1 && ca == -1 || ab == -1 && bb == -1 && cb == -1 || ac == -1 && bc == -1 && cc == -1 || aa == -1 && ab == -1 && ac == -1 || ba == -1 && bb == -1 && bc == -1 || ca == -1 && cb == -1 && cc == -1){
      fill(0);
      text("You lose! Try again!",200,670);
      s = -1;
    }
    if (aa != 0 && ab != 0 && ac != 0 && ba != 0 && bb != 0 && bc != 0 && ca != 0 && cb != 0 && cc != 0){
      fill(0);
      text("Tie! Try again",230,670);
      s = -1;
    } 
    if (aa == 1 && ab == 1 && s == -1 && ac == 0){
      line(60,460,140,540);
      line(140,460,60,540);
      ac = -1;
      s = 1;
    }
    if (ac == 1 && ab == 1 && s == -1 && aa == 0){
      line(60,60,140,140);
      line(140,60,60,140);
      aa = -1;
      s = 1;
    }
    if (ac == 1 && aa == 1 && s == -1 && ab == 0){
      line(60,260,140,340);
      line(140,260,60,340);
      ab = -1;
      s = 1;
    }
    if (ba == 1 && bb == 1 && s == -1 && bc == 0){
      line(260,460,340,540);
      line(340,460,260,540);
      bc = -1;
      s = 1;
    }
    if (bc == 1 && bb == 1 && s == -1 && ba == 0){
      line(260,60,340,140);
      line(340,60,260,140);
      ba = -1;
      s = 1;
    }
    if (bc == 1 && ba == 1 && s == -1 && bb == 0){
      line(260,260,340,340);
      line(340,260,260,340);
      bb = -1;
      s = 1;
    }
    if (ca == 1 && cb == 1 && s == -1 && cc == 0){
      line(460,460,540,540);
      line(540,460,460,540);
      cc = -1;
      s = 1;
    }
    if (cc == 1 && cb == 1 && s == -1 && ca == 0){
      line(460,60,540,140);
      line(540,60,460,140);
      ca = -1;
      s = 1;
    }
    if (cc == 1 && ca == 1 && s == -1 && cb == 0){
      line(460,260,540,340);
      line(540,260,460,340);
      cb = -1;
      s = 1;
    }
    if (aa == 1 && ba == 1 && s == -1 && ca == 0){
      line(460,60,540,140);
      line(460,140,540,60);
      ca = -1;
      s = 1;
    }
    if (aa == 1 && ca == 1 && s == -1 && ba == 0){
      line(260,60,340,140);
      line(260,140,340,60);
      ba = -1;
      s = 1;
    }
    if (ba == 1 && ca == 1 && s == -1 && aa == 0){
      line(60,60,140,140);
      line(60,140,140,60);
      aa = -1;
      s = 1;
    }
    if (ab == 1 && bb == 1 && s == -1 && cb == 0){
      line(460,260,540,340);
      line(460,340,540,260);
      cb = -1;
      s = 1;
    }
    if (ab == 1 && cb == 1 && s == -1 && bb == 0){
      line(260,260,340,340);
      line(260,340,340,260);
      bb = -1;
      s = 1;
    }
    if (bb == 1 && cb == 1 && s == -1 && ab == 0){
      line(60,260,140,340);
      line(60,340,140,260);
      ab = -1;
      s = 1;
    }
    if (ac == 1 && bc == 1 && s == -1 && cc == 0){
      line(460,460,540,540);
      line(460,540,540,460);
      cc = -1;
      s = 1;
    }
    if (ac == 1 && cc == 1 && s == -1 && bc == 0){
      line(260,460,340,540);
      line(260,540,340,460);
      bc = -1;
      s = 1;
    }
    if (bc == 1 && cc == 1 && s == -1 && ac == 0){
      line(60,460,140,540);
      line(60,540,140,460);
      ac = -1;
      s = 1;
    }
    if (aa == 1 && cc == 1 && s == -1 && bb == 0){
      line(260,260,340,340);
      line(260,340,340,260);
      bb = -1;
      s = 1;
    }
    if (aa == 1 && bb == 1 && s == -1 && cc == 0){
      line(460,460,540,540);
      line(460,540,540,460);
      cc = -1;
      s = 1;
    }
    if (cc == 1 && bb == 1 && s == -1 && aa == 0){
      line(60,60,140,140);
      line(60,140,140,60);
      aa = -1;
      s = 1;
    }
    if (ac == 1 && ca == 1 && s == -1 && bb == 0){
      line(260,260,340,340);
      line(260,340,340,260);
      bb = -1;
      s = 1;
    }
    if (ac == 1 && bb == 1 && s == -1 && ca == 0){
      line(460,60,540,140);
      line(460,140,540,60);
      ca = -1;
      s = 1;
    }
    if (ca == 1 && bb == 1 && s == -1 && ac == 0){
      line(60,460,140,540);
      line(140,460,60,540);
      ac = -1;
      s = 1;
    }
    if (s == -1 && p == 0){
      if (bb == 0){
        line(260,260,340,340);
        line(260,340,340,260);
        bb = -1;
      }
      if (bb == 1){
        if (n == 0){
          line(60,260,140,340);
          line(60,340,140,260);
          ab = -1;
        }
        if (n == 1){
          line(60,60,140,140);
          line(60,140,140,60);
          aa = -1;
        }
      }
      s = 1;
      p = p + 1;
    }
    if (s == -1 && p == 1){
      if (aa == 0 && s == -1){
        line(60,60,140,140);
        line(60,140,140,60);
        aa = -1;
        s = 1;
      }
      if (ab == 0 && s == -1){
        line(60,260,140,340);
        line(60,340,140,260);
        ab = -1;
        s = 1;
      }
      if (ac == 0 && s == -1){
        line(60,460,140,540);
        line(140,460,60,540);
        ac = -1;
        s = 1;
      }
      if (bc == 0 && s == -1){
        line(260,60,340,140);
        line(260,140,340,60);
        ba = -1;
        s = 1;
      }
      p = p + 1;
    }      
  }
  strokeWeight(5);
  if (s == 1 && mouseX < 200 && mouseY < 200 && mousePressed == true && aa == 0){
    fill(0);
    ellipse(100,100,90,90);
    fill(240);
    ellipse(100,100,75,75);
    s = -s;
    aa = 1;
  }
  if (s == 1 && mouseX < 200 && mouseY > 200 && mouseY < 400 && mousePressed == true && ab == 0){
    fill(0);
    ellipse(100,300,90,90);
    fill(240);
    ellipse(100,300,75,75);
    s = -s;
    ab = 1;
  }
  if (s == 1 && mouseX < 200 && mouseY > 400 && mouseY < 600 && mousePressed == true && ac == 0){
    fill(0);
    ellipse(100,500,90,90);
    fill(240);
    ellipse(100,500,75,75);
    s = -s;
    ac = 1;
  }
  if (s == 1 && mouseY < 200 && mouseX > 200 && mouseX < 400 && mousePressed == true && ba == 0){
    fill(0);
    ellipse(300,100,90,90);
    fill(240);
    ellipse(300,100,75,75);
    s = -s;
    ba = 1;
  }
  if (s == 1 && mouseY < 200 && mouseX > 400 && mouseX < 600 && mousePressed == true && ca == 0){
    fill(0);
    ellipse(500,100,90,90);
    fill(240);
    ellipse(500,100,75,75);
    s = -s;
    ca = 1;
  }
  if (s == 1 && mouseX > 200 && mouseX < 400 && mouseY > 200 && mouseY < 400 && mousePressed == true && bb == 0){
    fill(0);
    ellipse(300,300,90,90);
    fill(240);
    ellipse(300,300,75,75);
    s = -s;
    bb = 1;
  }
  if (s == 1 && mouseX > 400 && mouseX < 600 && mouseY > 200 && mouseY < 400 && mousePressed == true && cb == 0){
    fill(0);
    ellipse(500,300,90,90);
    fill(240);
    ellipse(500,300,75,75);
    s = -s;
    cb = 1;
  }
  if (s == 1 && mouseX > 200 && mouseX < 400 && mouseY > 400 && mouseY < 600 && mousePressed == true && bc == 0){
    fill(0);
    ellipse(300,500,90,90);
    fill(240);
    ellipse(300,500,75,75);
    s = -s;
    bc = 1;
  }
  if (s == 1 && mouseX > 400 && mouseX < 600 && mouseY > 400 && mouseY < 600 && mousePressed == true && cc == 0){
    fill(0);
    ellipse(500,500,90,90);
    fill(240);
    ellipse(500,500,75,75);
    s = -s;
    cc = 1;
  }
}

