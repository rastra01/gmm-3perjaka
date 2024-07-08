float Xawn1_scene1 = 0;
float Xawn2_scene1 = 0;
float Xobk1_scene1 = 0;
float Xobk2_scene1 = 0;
float Xobk3_scene1 = 0;
float Xobk4_scene1 = 0;
float Xobk5_scene1 = 0;
float Xobk6_scene1 = 0;
float Xobk7_scene1 = 0;
float Xobk8_scene1 = 0;
float kapalY_scene1 = 0;
float tenggelamSpeed_scene1 = 0.5;
boolean tenggelam_scene1 = false;

ArrayList<Particle> particles_scene1 = new ArrayList<Particle>();

void scene4() {
  background(150, 150, 150); // warna mendung

  Xawn1_scene1 += 0.5;
  Xawn2_scene1 += 1;
  Xobk1_scene1 += 1;
  Xobk2_scene1 += 1;
  Xobk3_scene1 += 1;
  Xobk4_scene1 += 1;
  Xobk5_scene1 += 1;
  Xobk6_scene1 += 1;
  Xobk7_scene1 += 1;
  Xobk8_scene1 += 1;

  if (Xawn1_scene1 >= 800) {
    Xawn1_scene1 = -250;
  }
  fill(200, 200, 200); // warna awan mendung
  ellipse(124 + Xawn1_scene1, 132, 60, 40);
  ellipse(156 + Xawn1_scene1, 110, 70, 60);
  ellipse(200 + Xawn1_scene1, 105, 70, 60);
  ellipse(210 + Xawn1_scene1, 130, 90, 50);

  if (Xawn2_scene1 >= 800) {
    Xawn2_scene1 = -250;
  }
  fill(200, 200, 200); // warna awan mendung
  ellipse(24 + Xawn2_scene1, 302, 60, 40);
  ellipse(56 + Xawn2_scene1, 280, 70, 60);
  ellipse(100 + Xawn2_scene1, 285, 70, 40);
  ellipse(130 + Xawn2_scene1, 302, 60, 30);

  fill(#151269); // warna laut
  noStroke();
  rect(0, 395, 800, 205);

  // Logika untuk menenggelamkan kapal
  if (tenggelam_scene1) {
    kapalY_scene1 += tenggelamSpeed_scene1;
    tenggelamSpeed_scene1 += 0.001; // Meningkatkan kecepatan tenggelam secara bertahap
  }

  fill(#501C07); // warna kapal
  noStroke();
  quad(350, 350 + kapalY_scene1, 700, 350 + kapalY_scene1, 650, 400 + kapalY_scene1, 420, 400 + kapalY_scene1);

  fill(#98350E);
  rect(420, 250 + kapalY_scene1, 6, 100); // tiang pendek
  ellipse(423, 250 + kapalY_scene1, 10, 10);
  rect(500, 150 + kapalY_scene1, 6, 200); // tiang panjang
  ellipse(503, 150 + kapalY_scene1, 10, 10);

  fill(#B9ACA7);
  triangle(423, 250 + kapalY_scene1, 480, 320 + kapalY_scene1, 423, 320 + kapalY_scene1); // bendera kecil
  triangle(503, 150 + kapalY_scene1, 580, 320 + kapalY_scene1, 503, 320 + kapalY_scene1); // bendera besar

  fill(#98350E);
  rect(605, 310 + kapalY_scene1, 60, 40);
  fill(#501C07);
  triangle(595, 310 + kapalY_scene1, 635, 290 + kapalY_scene1, 675, 310 + kapalY_scene1);

  if (Xobk1_scene1 >= 800) {
    Xobk1_scene1 = -800;
  }
  fill(#1170b7);
  ellipse(0 + Xobk1_scene1, 400, 100, 30);
  if (Xobk2_scene1 >= 800) {
    Xobk2_scene1 = -700;
  }
  fill(#1170b7);
  ellipse(100 + Xobk2_scene1, 400, 100, 30);
  if (Xobk3_scene1 >= 800) {
    Xobk3_scene1 = -600;
  }
  fill(#1170b7);
  ellipse(200 + Xobk3_scene1, 400, 100, 30);
  if (Xobk4_scene1 >= 800) {
    Xobk4_scene1 = -500;
  }
  fill(#1170b7);
  ellipse(300 + Xobk4_scene1, 400, 100, 30);
  if (Xobk5_scene1 >= 800) {
    Xobk5_scene1 = -400;
  }
  fill(#1170b7);
  ellipse(400 + Xobk5_scene1, 400, 100, 30);
  if (Xobk6_scene1 >= 800) {
    Xobk6_scene1 = -300;
  }
  fill(#1170b7);
  ellipse(500 + Xobk6_scene1, 400, 100, 30);
  if (Xobk7_scene1 >= 800) {
    Xobk7_scene1 = -200;
  }
  fill(#1170b7);
  ellipse(600 + Xobk7_scene1, 400, 100, 30);
  if (Xobk8_scene1 >= 800) {
    Xobk8_scene1 = -100;
  }

  // Membuat partikel api
  if (frameCount % 5 == 0) {
    particles_scene1.add(new Particle(630, 290 + kapalY_scene1));
  }

  for (int i = particles_scene1.size() - 1; i >= 0; i--) {
    Particle p = particles_scene1.get(i);
    p.update();
    p.display();
    if (p.isDead()) {
      particles_scene1.remove(i);
    }
  }
}

class Particle {
  PVector position;
  PVector velocity;
  float lifespan;

  Particle(float x, float y) {
    position = new PVector(x, y);
    velocity = new PVector(random(-1, 1), random(-2, -0.5));
    lifespan = 255;
  }

  void update() {
    position.add(velocity);
    lifespan -= 2.0;
  }

  void display() {
    noStroke();
    fill(255, lifespan, 0, lifespan);
    ellipse(position.x, position.y, 12, 12);
  }

  boolean isDead() {
    return lifespan < 0;
  }
}

// Untuk menenggelamkan kapal dengan klik mouse
void mousePressed() {
  tenggelam_scene1 = true;
}
