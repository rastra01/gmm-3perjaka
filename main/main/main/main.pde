import processing.sound.*;
SoundFile file;

int currentScene = 1;
int sceneDuration = 32000; // durasi per scene dalam milidetik (30 detik)
int lastSwitchTime;

void setup() {
  size(800, 600);
  lastSwitchTime = millis();
  file = new SoundFile(this, "dialogue.mp3");
  file.play();
}
void draw() {
  if (millis() - lastSwitchTime > sceneDuration) {
    currentScene++;
    if (currentScene > 6) {
      currentScene = 1; // kembali ke scene 1 setelah scene terakhir
    }
    lastSwitchTime = millis();
  }

  if (currentScene == 1) {
    scene1();
  } else if (currentScene == 2) {
    scene2();
  } else if (currentScene == 3) {
    scene3();
  } else if (currentScene == 4) {
    scene4();
  } else if (currentScene == 5) {
    scene5();
  } else if (currentScene == 6) {
    scene6();
  }
}

void keyPressed() {
  if (key == '1') {
    currentScene = 1;
    lastSwitchTime = millis();
  } else if (key == '2') {
    currentScene = 2;
    lastSwitchTime = millis();
  } else if (key == '3') {
    currentScene = 3;
    lastSwitchTime = millis();
  } else if (key == '4') {
    currentScene = 4;
    lastSwitchTime = millis();
  } else if (key == '5') {
    currentScene = 5;
    lastSwitchTime = millis();
  } else if (key == '6') {
    currentScene = 6;
    lastSwitchTime = millis();
  }
}
