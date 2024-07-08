PFont myFont;

// Variables to control animation for scene 1
float handAngle = 0;
float handSpeed = 0.1; // Kecepatan lambaian tangan
float handRange = radians(-20); // Mengubah tanda menjadi negatif agar tangan mengayun ke arah berlawanan

// Variables to control cloud positions for scene 1
float cloud1X = 100;
float cloud2X = 150;
float cloud3X = 400;
float cloud4X = 450;
float cloudSpeed = 1;

void scene1() {
  // Clear background each frame
  background(150, 200, 255);  // light blue background

  // Draw background elements
  fill(34, 139, 34);  // green for grass
  rect(0, 400, width, 100);  // grass
  
  // Draw clouds
  fill(255);  // white color
  ellipse(cloud1X, 100, 80, 50);
  ellipse(cloud2X, 110, 90, 60);
  ellipse(cloud3X, 150, 70, 40);
  ellipse(cloud4X, 140, 80, 50);
  
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
  // Head
  fill(255, 220, 177);  // skin color
  rect(175, 150, 150, 100, 20);  // head with rounded corners
  
  // Hair
  fill(0);  // black color
  rect(175, 120, 150, 40, 20, 20, 0, 0);  // hair
 
  // Eyes
  fill(255);  // white color for eyes
  ellipse(210, 180, 30, 20);  // left eye
  ellipse(290, 180, 30, 20);  // right eye
  fill(0);  // black color for pupils
  ellipse(210, 180, 10, 10);  // left pupil
  ellipse(290, 180, 10, 10);  // right pupil
  
  // Mouth
  fill(0);  // black color for mouth
  arc(250, 210, 40, 20, 0, PI);  // smiling mouth
  
  // Body
  fill(0, 0, 255);  // blue color for shirt
  rect(200, 250, 100, 100);  // body
  
  // Shirt text
  fill(255);
  text("I ", 220, 280);
  fill(255, 0, 0);
  text("♥", 245, 280);
  fill(255);
  text("YK", 270, 280);
  
  // Arms
  fill(255, 220, 177);  // skin color
  rect(300, 270, 30, 10);  // right arm
  
  // Draw waving left arm with a circular hand
  pushMatrix();
  translate(170, 275);  // Move origin to left arm joint
  float angle = handAngle + sin(frameCount * handSpeed) * handRange; // Perubahan sudut dengan fungsi sinusoidal
  rotate(angle);  // Rotate arm
  rect(0, 0, 30, 10);  // left arm
  ellipse(35, 5, 30, 30);  // left hand
  popMatrix();
  
  // Right hand
  ellipse(340, 275, 30, 30);  // right hand
  
  // Legs
  fill(139, 69, 19);  // brown color for shorts
  rect(200, 350, 40, 80);  // left leg
  rect(260, 350, 40, 80);  // right leg
  
  // Shoes
  fill(0);  // black color for shoes
  rect(200, 420, 40, 20);  // left shoe
  rect(260, 420, 40, 20);  // right shoe

  // Update cloud positions for movement
  cloud1X -= cloudSpeed;
  cloud2X -= cloudSpeed * 0.8;
  cloud3X -= cloudSpeed * 1.2;
  cloud4X -= cloudSpeed;

  // Reset cloud positions when they go off-screen
  if (cloud1X < -40) cloud1X = width + 40;
  if (cloud2X < -45) cloud2X = width + 45;
  if (cloud3X < -35) cloud3X = width + 35;
  if (cloud4X < -40) cloud4X = width + 40;
}
