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

class Cube {
  float scale;
  Cube(float a) {
    scale = a;
  }
  void draw() {
    stroke(10);

    beginShape();
    vertex( scale/2, scale/2, -scale/2);
    vertex( scale/2, -scale/2, -scale/2);
    vertex( -scale/2, -scale/2, -scale/2);
    vertex( -scale/2, scale/2, -scale/2);
    endShape(CLOSE);
    fill(0, 255, 0);
    
    beginShape();
    vertex( scale/2, scale/2, scale/2);
    vertex( scale/2, -scale/2, scale/2);
    vertex( -scale/2, -scale/2, scale/2);
    vertex( -scale/2, scale/2, scale/2);
    endShape(CLOSE);
    fill(0, 0, 255);
    
    beginShape();
    vertex( scale/2, scale/2, scale/2);
    vertex( scale/2, scale/2, -scale/2);
    vertex( scale/2, -scale/2, -scale/2);
    vertex( scale/2, -scale/2, scale/2);
    endShape(CLOSE);
    fill(255, 255, 0);
    
    beginShape();
    vertex( -scale/2, scale/2, scale/2);
    vertex( -scale/2, scale/2, -scale/2);
    vertex( -scale/2, -scale/2, -scale/2);
    vertex( -scale/2, -scale/2, scale/2);
    endShape(CLOSE);
    fill(255, 0, 255);
    
    beginShape();
    vertex( scale/2, -scale/2, scale/2);
    vertex( scale/2, -scale/2, -scale/2);
    vertex( -scale/2, -scale/2, -scale/2);
    vertex( -scale/2, -scale/2, scale/2);
    endShape(CLOSE);
    fill(0, 255, 255);
    
    beginShape();
    vertex( scale/2, scale/2, scale/2);
    vertex( scale/2, scale/2, -scale/2);
    vertex( -scale/2, scale/2, -scale/2);
    vertex( -scale/2, scale/2, scale/2); 
    endShape(CLOSE);
    fill(255, 255, 255);
  }
}

void setup() {
  size(400, 400, OPENGL);
  frameRate(30);
}

int saveFlag = 0; // 1 -> SAVEON, 0 -> SAVEOFF
Frame frame = new Frame();
Cube c = new Cube(170.0);

void draw() {
  background(0);
  translate(width/2, height/2);
  //rotateX(radians(3*frame.getFrameNum()));
  rotateY(radians(3*frame.getFrameNum()));
  //rotateZ(radians(3*frame.getFrameNum()));
  c.draw();
  frame.plus();
  if (saveFlag == 1) {
    saveFrame("frames/######.png");
  }
  println(frame.getFrameNum());
}