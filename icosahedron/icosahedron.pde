import processing.opengl.*;

import processing.core.PApplet;

import javax.swing.*;

class Frame {
  int frameNum;
  Frame() {
    frameNum = 0;
  }
  void plus() {
    frameNum++;
  }
  int getFrameNum() {
    return frameNum;
  }
}

class Icosahedron {
  float gt = (sqrt(5) + 1)/2;
  float minus = 1 + ((sqrt(5) - 1)/2)/2;
  float scale;
  Icosahedron(float a) {
    scale = a;
  }
  void draw() {
    stroke(10);
    
//(±1,±G,0)
//(0,±1,±G)
//(±G,0,±1)
    
    beginShape();
    vertex( scale, gt*scale, 1); 
    vertex( -scale, -gt*scale, 0);
    vertex( -scale, -gt*scale, 1);
    endShape(CLOSE);
    fill(0, 255, 0);
    beginShape();
    vertex( scale, gt*scale, 0); 
    vertex( -scale, -gt*scale, 0);
    vertex( -scale, -gt*scale, 1);
    endShape(CLOSE);
    fill(0, 0, 255);
    beginShape();
    vertex( scale, gt*scale, 0); 
    vertex( -scale, -gt*scale, 0);
    vertex( -scale, -gt*scale, 1);
    endShape(CLOSE);
    fill(255, 255, 0);
    beginShape();
    vertex( scale, gt*scale, 0); 
    vertex( -scale, -gt*scale, 0);
    vertex( -scale, -gt*scale, 1);
    endShape(CLOSE);
    fill(255, 0, 255);
    beginShape();
    vertex( scale, gt*scale, 0); 
    vertex( -scale, -gt*scale, 0);
    vertex( -scale, -gt*scale, 1);
    endShape(CLOSE);
    fill(0, 255, 255);
    beginShape();
    vertex( scale, gt*scale, 0); 
    vertex( -scale, -gt*scale, 0);
    vertex( -scale, -gt*scale, 1);
    endShape(CLOSE);
    fill(255, 255, 255);
    beginShape();
    vertex( scale, gt*scale, 0); 
    vertex( -scale, -gt*scale, 0);
    vertex( -scale, -gt*scale, 1);
    endShape(CLOSE);
    fill(100, 150, 255);
    beginShape();
      vertex( scale, gt*scale, 0); 
    vertex( -scale, -gt*scale, 0);
    vertex( -scale, -gt*scale, 1);
    endShape(CLOSE);
    fill(255, 100, 150);
    beginShape();
     vertex( scale, gt*scale, 0); 
    vertex( -scale, -gt*scale, 0);
    vertex( -scale, -gt*scale, 1);
    endShape(CLOSE);
    fill(150, 255, 100);
    beginShape();
    vertex( scale, gt*scale, 0); 
    vertex( -scale, -gt*scale, 0);
    vertex( -scale, -gt*scale, 1);
    endShape(CLOSE);
    fill(255, 150, 100);
    beginShape();
    vertex( scale, gt*scale, 0); 
    vertex( -scale, -gt*scale, 0);
    vertex( -scale, -gt*scale, 1);
    endShape(CLOSE);
    fill(150, 150, 100);
    beginShape();
    vertex( scale, gt*scale, 0); 
    vertex( -scale, -gt*scale, 0);
    vertex( -scale, -gt*scale, 1);
    endShape(CLOSE);
  }
}

void setup() {
  size(400, 400, OPENGL);
  frameRate(30);
}

int saveFlag = 0; // 1 -> SAVEON, 0 -> SAVEOFF
Frame frame = new Frame();
Icosahedron d = new Icosahedron(70.0);


void draw() {
  background(0);
  translate(width/2, height/2);
  rotateX(radians(3*frame.getFrameNum()));
  rotateY(radians(3*frame.getFrameNum()));
  rotateZ(radians(3*frame.getFrameNum()));
  d.draw();
  frame.plus();
  if (saveFlag == 1) {
    saveFrame("frames/######.png");
  }
  println(frame.getFrameNum());
}