float a, b, c, aw, sunX;
float sunSpeed = 0.5; // Kecepatan pergerakan matahari

void scene6() {
  background(25, 25, 112); // Background biru gelap
  
  //gunung
  fill(0, 94, 0);
  arc(130, 330, 600, 500, (180*PI)/180, (360*PI)/180);
  fill(0, 132, 0);
  arc(320, 330, 400, 230, (180*PI)/180, (360*PI)/180);
  fill(0, 150, 0);
  arc(530, 330, 400, 230, (180*PI)/180, (360*PI)/180);
  
  //Bulan
  fill(247, 207, 163);
  ellipse(width / 2, 90, 60 + sunX / 6, 60 + sunX / 6); // Menggunakan sunX untuk mengatur ukuran bulan
  
  //awan
  aw += 2; 
  noStroke();
  fill(95, 158, 160);
  ellipse(100 + aw, 140, 30, 30);
  ellipse(130 + aw, 140, 50, 50);
  ellipse(160 + aw, 140, 50, 50);
  ellipse(190 + aw, 140, 30, 30);
  
  ellipse(220 + aw, 280, 30, 30);
  ellipse(250 + aw, 280, 50, 50);
  ellipse(280 + aw, 280, 50, 50);
  ellipse(310 + aw, 280, 30, 30);
  
  ellipse(350 + aw, 180, 30, 30);
  ellipse(380 + aw, 180, 50, 50);
  ellipse(410 + aw, 180, 50, 50);
  ellipse(440 + aw, 180, 30, 30);
  
  if (aw > width) {
    aw = -440;
  }
  
  //rumput
  fill(107, 176, 93);
  rect(0, 330, 1000, 200);
  
  //tanah
  fill(96, 100, 33); 
  rect(0, 375, 1000, 100);
  
  //rumah
  noStroke();
  fill(255, 0, 255);
  triangle(50, 325, 20, 345, 80, 345);
  fill(20, 100, 200); 
  rect(30, 345, 40, 20);
  
  int zz = 70;
  fill(200, 100, 0);
  triangle(50 + zz, 320, 20 + zz, 340, 80 + zz, 340);
  fill(200, 0, 0);
  rect(30 + zz, 340, 40, 20);
  
  //jalan
  fill(0);
  rect(0, 390, 1000, 400);
  stroke(252, 252, 252);
  strokeWeight(2);
  
  for (int i = 0; i <= 920; i += 90) {
    line(-60 + i, 440, i, 440);
  }
  
  for (int i = 0; i <= 920; i += 90) {
    line(-60 + i, 500, i, 500);
  }
  
  //pohon
  noStroke();
  //////// pohon rumah
  fill(69, 68, 41);
  for (int i = 160; i <= 700; i += 65) {
    rect(i, 340, 10, 30);
  }
  
  fill(125, 71, 42);
  for (int j = 0; j <= 30; j += 10) {
    for (int i = 0; i <= 1000; i += 65) {
      triangle(35 + i, 305 + j, 47.5 + i, 325 + j, 22.5 + i, 325 + j);
    }
  }
  
  //pohon jalan
  fill(125, 71, 42);
  for (int i = 20; i <= 1000; i += 65) {
    rect(i, 355, 10, 30);
  }
  fill(52, 112, 50);
  for (int j = 0; j <= 30; j += 10) {
    for (int i = 0; i <= 1000; i += 65) {
      triangle(25 + i, 320 + j, 37.5 + i, 340 + j, 12.5 + i, 340 + j);
    }
  }
  
  // mobil1
  float ms = -200;
  float mobil = 20 + ms;
  
  fill(0, 255, 0);
  rect(mobil, 350, 100, 50);
  fill(124, 202, 0);
  rect(120 + ms, 365, 40, 35);
  fill(255);
  rect(130 + ms, 373, 20, 20);
  fill(65);
  ellipse(45 + ms, 400, 30, 30);
  ellipse(120 + ms, 400, 30, 30);
  
  // mobil2
  int xx = 60;
  float ms2 = -200;
  float mobil2 = 20 + ms2;
  
  fill(93, 128, 245);
  rect(mobil2, 350 + xx, 100, 50);
  fill(131, 154, 230);
  rect(120 + ms2, 365 + xx, 40, 35);
  fill(255);
  rect(130 + ms2, 373 + xx, 20, 20);
  fill(65);
  ellipse(45 + ms2, 400 + xx, 30, 30);
  ellipse(120 + ms2, 400 + xx, 30, 30);
  
  // mobil p3
  float ms3 = -200;
  float mobil3 = 20 + ms3;
  
  fill(227, 189, 52);
  rect(mobil3, 350 + xx, 100, 50);
  fill(189, 173, 115);
  rect(120 + ms3, 365 + xx, 40, 35);
  fill(255);
  rect(130 + ms3, 373 + xx, 20, 20);
  fill(65);
  ellipse(45 + ms3, 400 + xx, 30, 30);
  ellipse(120 + ms3, 400 + xx, 30, 30);
  
  a += 10;
  b += 16;
  c += 12;
  if (mobil > width) {
    a = 0;
  } else if (mobil2 > width) {
    b = 0;
  } else if (mobil3 > width) {
    c = 0;
  }
  
  // Matahari bergerak secara otomatis
  sunX += sunSpeed;
  if (sunX > width + 60) {
    sunX = -60; // Kembali ke posisi awal setelah melewati layar
  }
}
