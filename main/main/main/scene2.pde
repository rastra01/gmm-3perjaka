float Xawn1 = 0;
float Xawn2 = 0;
float Xobk1 = 0;
float Xobk2 = 0;
float Xobk3 = 0;
float Xobk4 = 0;
float Xobk5 = 0;
float Xobk6 = 0;
float Xobk7 = 0;
float Xobk8 = 0;
PImage gambar;


void scene2(){

  background (100,200,155);
  size (800,600);



  background(100,200,255);
  Xawn1 += 0.5 + 1;
  Xawn2 += 2 + 1;
  Xobk1 += 3 + 1;
  Xobk2 += 3 + 1;
  Xobk3 += 3 + 1;
  Xobk4 += 3 + 1;
  Xobk5 += 3 + 1;
  Xobk6 += 3 + 1;
  Xobk7 += 3 + 1;
  Xobk8 += 3 + 1;
  
  if (Xawn1 >= 800){
    Xawn1 =-250;
  }
  fill(255,255,255);
  ellipse(124 + Xawn1, 132, 60, 40);
  ellipse(156 + Xawn1, 110, 70, 60);
  ellipse(200 + Xawn1, 105, 70, 60);
  ellipse(210 + Xawn1, 130, 90, 50);
  
 if (Xawn2 >= 800){
    Xawn2 =-250;
  }
  fill(255,255,255);
  ellipse(24 + Xawn2, 302, 60, 40);
  ellipse(56 + Xawn2, 280, 70, 60);
  ellipse(100 + Xawn2, 285, 70, 40);
  ellipse(130 + Xawn2, 302, 60, 30);
  
  fill(#151269); //warna laut
  noStroke();
  rect(0,395,800,205);
  
  fill(#501C07);// warna kapal
  noStroke();
  quad(350,350,700,350,650,400,420,400);
  
  fill(#98350E);
  rect(420,250,6,100);//tiang pendek
  ellipse(423,250,10,10);
  rect(500,150,6,200);//tiang panjang
  ellipse(503,150,10,10);
  
  fill(#B9ACA7);
  triangle(423,250,480,320,423,320);//bendera kecil
  triangle(503,150,580,320,503,320);//bendera besar
  
  fill(#98350E);
  rect(605,310,60,40);
  fill(#501C07);
  triangle(595,310,635,290,675,310);
  
  if (Xobk1 >= 800){
  Xobk1 = -800;
  }
  fill(#1170b7);
  ellipse(0+Xobk1, 400, 100, 30);
  if(Xobk2 >= 800){
    Xobk2 = -700;
  }
  fill(#1170b7);
  ellipse(100+Xobk2, 400, 100, 30);
  if(Xobk3 >= 800){
    Xobk3 = -600;
  }
  fill(#1170b7);
  ellipse(200+Xobk3, 400, 100, 30);
  if(Xobk4 >= 800){
    Xobk4 = -500;
  }
  fill(#1170b7);
  ellipse(300+Xobk4, 400, 100, 30);
  if(Xobk5 >= 800){
    Xobk5 = -400;
  }
  fill(#1170b7);
  ellipse(400+Xobk5, 400, 100, 30);
  if(Xobk6 >= 800){
    Xobk6 = -300;
  }
  fill(#1170b7);
  ellipse(500+Xobk6, 400, 100, 30);
  if(Xobk7 >= 800){
    Xobk7 = -200;
  }
  fill(#1170b7);
  ellipse(600+Xobk7, 400, 100, 30);
  if(Xobk8 >= 800){
    Xobk8 = -100;
  }
}
