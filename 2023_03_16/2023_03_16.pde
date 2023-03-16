int event = 0;
int[] push = {0,0,0,0,0,0,0,0};
void drawingmode()
{
   fill(255);      //fill(색깔코드)
  rect(100, 100, 100, 50);  //사각형 사이즈    //
  rect(250, 100, 100, 50);  //사각형 사이즈
  rect(400, 100, 100, 50);  //사각형 사이즈
  rect(550, 100, 100, 50);  //사각형 사이즈
  rect(700, 100, 100, 50);  //사각형 사이즈
  rect(850, 100, 100, 50);  //사각형 사이즈
  rect(1000, 100, 100, 50);  //사각형 사이즈
  rect(1150, 100, 100, 50);  //사각형 사이즈
  
  rect(100, 300, 100, 50);  //사각형 사이즈
  rect(250, 300, 100, 50);  //사각형 사이즈
  rect(400, 300, 100, 50);  //사각형 사이즈
  rect(550, 300, 100, 50);  //사각형 사이즈
  rect(700, 300, 100, 50);  //사각형 사이즈
  rect(850, 300, 100, 50);  //사각형 사이즈
  rect(1000, 300, 100, 50);  //사각형 사이즈
  rect(1150, 300, 100, 50);  //사각형 사이즈
  
  
  rect(100, 500, 100, 50);  //사각형 사이즈
  rect(250, 500, 100, 50);  //사각형 사이즈
  rect(400, 500, 100, 50);  //사각형 사이즈
  rect(550, 500, 100, 50);  //사각형 사이즈
  rect(700, 500, 100, 50);  //사각형 사이즈
  rect(850, 500, 100, 50);  //사각형 사이즈
  rect(1000, 500, 100, 50);  //사각형 사이즈
  rect(1150, 500, 100, 50);  //사각형 사이즈
}
void setup()
{
 size(1350, 850);     //백그라운드 사이즈 1000*1000
}

void draw()
{
  background(120);    //백그라운드 색깔 설정  
 drawingmode();
   
   check2(100, 100, 500, 50, 1);
   check2(250, 100, 500, 50, 2);
   check2(400, 100, 500, 50, 3);
   check2(550, 100, 500, 50, 4);
   check2(700, 100, 500, 50, 5);
   check2(850, 100, 500, 50, 6);
   check2(1000, 100, 500, 50, 7);
   check2(1150, 100, 500, 50, 8);
  
   check(100, 100, 100, 50, event);
   check(250, 100, 100, 50, event);
   check(400, 100, 100, 50, event);
   check(550, 100, 100, 50, event);
   check(700, 100, 100, 50, event);
   check(850, 100, 100, 50, event);
   check(1000, 100, 100, 50, event);
   check(1150, 100, 100, 50, event);
   

   
  
}

void check (int a, int b, int c, int d, int event) 
{
  if (mousePressed && (mouseX > a && mouseX < a+b) && (mouseY > c && mouseY < c+d))
  {
    event = 1;
  }
  else
  {
    event = 0;
  }
  
  if(event == 1)
  {
    fill(#ffcc33);
    rect(a, 300, 100, 50);  //사각형 사이즈
  }
   else if(event == 1)
  {
    fill(#ffcc33);
    rect(a, 300, 100, 50);  //사각형 사이즈
  }
}

void check2 (int a, int b, int c, int d, int count)
{
  
  if (mousePressed && (mouseX > a && mouseX < a+b) && (mouseY > c && mouseY < c+d))
  {
    push[count - 1]++;
    delay(100);
  }
   if(push[count-1] ==1)
  {
 //   delay(10);
    fill(#ffcc33);
    rect(a, 300, 100, 50);  //사각형 사이즈
//    delay(10);
  }
  else
  {
    //delay(10);
    fill(255);
    rect(a, 300, 100, 50);  //사각형 사이즈
 //   delay(10);
  }

   for (int i =0; i <= 7; i++)
 {
  if (push[i] >= 2) push[i] = 0; 
 }

  
}  
