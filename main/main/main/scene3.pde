float Xawn1_scene2 = 0;
float Xawn2_scene2 = 0;
float Xobk1_scene2 = 0;
float Xobk2_scene2 = 0;
float Xobk3_scene2 = 0;
float Xobk4_scene2 = 0;
float Xobk5_scene2 = 0;
float Xobk6_scene2 = 0;
float Xobk7_scene2 = 0;
float Xobk8_scene2 = 0;
int lightningTimer_scene2 = 0;
boolean showLightning_scene2 = false;

void scene3() {
  background(50, 50, 50); // latar belakang gelap untuk cuaca badai
  
  // Memperbarui posisi awan
  Xawn1_scene2 += 1.5;
  Xawn2_scene2 += 3;
  Xobk1_scene2 += 4;
  Xobk2_scene2 += 4;
  Xobk3_scene2 += 4;
  Xobk4_scene2 += 4;
  Xobk5_scene2 += 4;
  Xobk6_scene2 += 4;
  Xobk7_scene2 += 4;
  Xobk8_scene2 += 4;

  // Reset posisi awan
  if (Xawn1_scene2 >= 800) {
    Xawn1_scene2 = -250;
  }
  if (Xawn2_scene2 >= 800) {
    Xawn2_scene2 = -250;
  }

  // Menggambar awan badai
  fill(100, 100, 100);
  ellipse(124 + Xawn1_scene2, 132, 60, 40);
  ellipse(156 + Xawn1_scene2, 110, 70, 60);
  ellipse(200 + Xawn1_scene2, 105, 70, 60);
  ellipse(210 + Xawn1_scene2, 130, 90, 50);
  ellipse(24 + Xawn2_scene2, 302, 60, 40);
  ellipse(56 + Xawn2_scene2, 280, 70, 60);
  ellipse(100 + Xawn2_scene2, 285, 70, 40);
  ellipse(130 + Xawn2_scene2, 302, 60, 30);

  // Menggambar laut
  fill(#151269);
  noStroke();
  rect(0, 395, 800, 205);

  // Menggambar kapal
  fill(#501C07);
  noStroke();
  quad(350, 350, 700, 350, 650, 400, 420, 400);
  fill(#98350E);
  rect(420, 250, 6, 100);
  ellipse(423, 250, 10, 10);
  rect(500, 150, 6, 200);
  ellipse(503, 150, 10, 10);
  fill(#B9ACA7);
  triangle(423, 250, 480, 320, 423, 320);
  triangle(503, 150, 580, 320, 503, 320);
  fill(#98350E);
  rect(605, 310, 60, 40);
  fill(#501C07);
  triangle(595, 310, 635, 290, 675, 310);

  // Menggambar gelombang
  if (Xobk1_scene2 >= 800) {
    Xobk1_scene2 = -800;
  }
  if (Xobk2_scene2 >= 800) {
    Xobk2_scene2 = -700;
  }
  if (Xobk3_scene2 >= 800) {
    Xobk3_scene2 = -600;
  }
  if (Xobk4_scene2 >= 800) {
    Xobk4_scene2 = -500;
  }
  if (Xobk5_scene2 >= 800) {
    Xobk5_scene2 = -400;
  }
  if (Xobk6_scene2 >= 800) {
    Xobk6_scene2 = -300;
  }
  if (Xobk7_scene2 >= 800) {
    Xobk7_scene2 = -200;
  }
  if (Xobk8_scene2 >= 800) {
    Xobk8_scene2 = -100;
  }
  fill(#1170b7);
  ellipse(0 + Xobk1_scene2, 400, 100, 30);
  ellipse(100 + Xobk2_scene2, 400, 100, 30);
  ellipse(200 + Xobk3_scene2, 400, 100, 30);
  ellipse(300 + Xobk4_scene2, 400, 100, 30);
  ellipse(400 + Xobk5_scene2, 400, 100, 30);
  ellipse(500 + Xobk6_scene2, 400, 100, 30);
  ellipse(600 + Xobk7_scene2, 400, 100, 30);
  ellipse(700 + Xobk8_scene2, 400, 100, 30);

  // Menggambar petir
  if (lightningTimer_scene2 > 0) {
    lightningTimer_scene2--;
  } else {
    showLightning_scene2 = !showLightning_scene2;
    lightningTimer_scene2 = int(random(30, 60));
  }
  
  if (showLightning_scene2) {
    drawLightning_scene2(500, 0, 8); // mulai dari atas dan tengah menuju kapal
  }
}

void drawLightning_scene2(float x, float y, int depth) {
  if (depth == 0 || y > 350) return; // berhenti jika depth 0 atau mencapai kapal
  
  float length = random(20, 50);
  float angle = radians(random(-15, 15)); // jangkauan sudut sempit untuk efek lebih vertikal
  float xEnd = x + length * cos(angle);
  float yEnd = y + length * sin(angle) + length; // tambahkan panjang ke y untuk efek ke bawah

  stroke(255, 255, 0);
  strokeWeight(4);
  line(x, y, xEnd, yEnd);
  
  drawLightning_scene2(xEnd, yEnd, depth - 1);
  
  if (random(1) < 0.3) {
    drawLightning_scene2(xEnd, yEnd, depth - 1);
  }
}
