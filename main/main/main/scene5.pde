

// Variables to control animation for scene 6
float scene6HandAngle = 0;
float scene6HandSpeed = 0.1; // Kecepatan lambaian tangan
float scene6HandRange = radians(-20); // Mengubah tanda menjadi negatif agar tangan mengayun ke arah berlawanan

// Variables to control cloud positions for scene 6
float scene6Cloud1X = 100;
float scene6Cloud2X = 150;
float scene6Cloud3X = 400;
float scene6Cloud4X = 450;
float scene6CloudSpeed = 1;

void scene5() {
  // Clear background each frame
  background(255, 140, 0); // Sunset background

  // Draw ocean and beach
  drawOcean();
  drawBeach();

  // Draw clouds
  fill(255);  // white color
  ellipse(scene6Cloud1X, 100, 80, 50);
  ellipse(scene6Cloud2X, 110, 90, 60);
  ellipse(scene6Cloud3X, 150, 70, 40);
  ellipse(scene6Cloud4X, 140, 80, 50);

  // Draw houses
  fill(255);  // brown color for houses
  rect(330, 350, 40, 50);
  rect(380, 360, 35, 45);
  rect(420, 355, 37, 47);

  fill(165, 42, 42);  // darker brown for roofs
  triangle(330, 350, 370, 350, 350, 320);  // roof 1
  triangle(380, 360, 415, 360, 398, 330);  // roof 2
  triangle(420, 355, 457, 355, 438, 325);  // roof 3

  // Draw character
  drawFisherman(250, 300);

  // Update cloud positions for movement
  scene6Cloud1X -= scene6CloudSpeed;
  scene6Cloud2X -= scene6CloudSpeed * 0.8;
  scene6Cloud3X -= scene6CloudSpeed * 1.2;
  scene6Cloud4X -= scene6CloudSpeed;

  // Reset cloud positions when they go off-screen
  if (scene6Cloud1X < -40) scene6Cloud1X = width + 40;
  if (scene6Cloud2X < -45) scene6Cloud2X = width + 45;
  if (scene6Cloud3X < -35) scene6Cloud3X = width + 35;
  if (scene6Cloud4X < -40) scene6Cloud4X = width + 40;
}

void drawOcean() {
  fill(0, 0, 255); // Blue ocean
  beginShape();
  vertex(0, height / 2);
  vertex(width, height / 2);
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
}

void drawBeach() {
  fill(#4c9a2a); // Sandy beach
  beginShape();
  vertex(0, height * 3 / 4);
  vertex(width, height * 3 / 4);
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
}

void drawFisherman(float x, float y) {
  // Draw head
  fill(255, 220, 177);  // skin color
  rect(x - 75, y - 150, 150, 100, 20);  // head with rounded corners
  
  // Hair
  fill(0);  // black color
  rect(x - 75, y - 180, 150, 40, 20, 20, 0, 0);  // hair

  // Eyes
  fill(255);  // white color for eyes
  ellipse(x - 40, y - 120, 30, 20);  // left eye
  ellipse(x + 40, y - 120, 30, 20);  // right eye
  fill(0);  // black color for pupils
  ellipse(x - 40, y - 120, 10, 10);  // left pupil
  ellipse(x + 40, y - 120, 10, 10);  // right pupil

  // Mouth
  fill(0);  // black color for mouth
  arc(x, y - 90, 40, 20, 0, PI);  // smiling mouth

  // Body
  fill(#00b4d8);  // blue color for shirt
  rect(x - 50, y - 50, 100, 100);  // body

  // Shirt text
  fill(255);
  text("I ", x - 30, y - 20);
  fill(255, 0, 0);
  text("♥️", x - 5, y - 20);
  fill(255);
  text("YK", x + 20, y - 20);

  // Arms
  fill(255, 220, 177);  // skin color
  rect(x + 50, y - 30, 30, 10);  // right arm
  ellipse(x + 85, y - 25, 30, 30);  // right hand
  drawFish(x + 85, y - 25);  // draw fish in right hand

  // Draw waving left arm with a circular hand
  pushMatrix();
  translate(x - 70, y - 25);  // Move origin to left arm joint
  float angle = scene6HandAngle + sin(frameCount * scene6HandSpeed) * scene6HandRange; // Perubahan sudut dengan fungsi sinusoidal
  rotate(angle);  // Rotate arm
  fill(255, 220, 177);  // skin color for left arm
  rect(0, 0, 30, 10);  // left arm
  fill(0, 0, 255);  // different color for left hand
  ellipse(35, 5, 30, 30);  // left hand
  drawFish(35, 5);  // draw fish in left hand
  popMatrix();

  // Legs
  fill(139, 69, 19);  // brown color for shorts
  rect(x - 50, y + 50, 40, 80);  // left leg
  rect(x + 10, y + 50, 40, 80);  // right leg

  // Shoes
  fill(0);  // black color for shoes
  rect(x - 50, y + 130, 40, 20);  // left shoe
  rect(x + 10, y + 130, 40, 20);  // right shoe
}

void drawFish(float x, float y) {
  fill(192, 192, 192); // Grey color
  ellipse(x, y, 40, 20);
  triangle(x + 20, y, x + 30, y - 10, x + 30, y + 10);
  fill(0); // Black color
  ellipse(x - 10, y - 5, 5, 5);
}
