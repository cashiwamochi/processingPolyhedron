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

class regularOctahedron {
  float scale;
  regularOctahedron(float a) {
    scale = a;
  }
  void draw() {
    stroke(10);

    beginShape();
    vertex( 0, 0, scale);
    vertex( scale*cos(radians(45)), scale*cos(radians(45)), 0);
    vertex( scale*cos(radians(45)), -scale*cos(radians(45)), 0);
    endShape(CLOSE);
    fill(0, 255, 0);
    
    beginShape();
    vertex( 0, 0, scale);
    vertex( scale*cos(radians(45)), scale*cos(radians(45)), 0);
    vertex( -scale*cos(radians(45)), scale*cos(radians(45)), 0);
    endShape(CLOSE);
    fill(0, 0, 255);
    
    beginShape();
    vertex( 0, 0, scale);
    vertex( -scale*cos(radians(45)), -scale*cos(radians(45)), 0);
    vertex( scale*cos(radians(45)), -scale*cos(radians(45)), 0);
    endShape(CLOSE);
    fill(255, 255, 0);
    
    beginShape();
    vertex( 0, 0, scale);
    vertex( -scale*cos(radians(45)), -scale*cos(radians(45)), 0);
    vertex( -scale*cos(radians(45)), scale*cos(radians(45)), 0);
    endShape(CLOSE);
    fill(255, 0, 255);
    
    beginShape();
    vertex( 0, 0, -scale);
    vertex( scale*cos(radians(45)), scale*cos(radians(45)), 0);
    vertex( scale*cos(radians(45)), -scale*cos(radians(45)), 0);
    endShape(CLOSE);
    fill(30, 200, 150);
    
    beginShape();
    vertex( 0, 0, -scale);
    vertex( scale*cos(radians(45)), scale*cos(radians(45)), 0);
    vertex( -scale*cos(radians(45)), scale*cos(radians(45)), 0);
    endShape(CLOSE);
    fill(25, 150, 80);
    
    beginShape();
    vertex( 0, 0, -scale);
    vertex( -scale*cos(radians(45)), -scale*cos(radians(45)), 0);
    vertex( scale*cos(radians(45)), -scale*cos(radians(45)), 0);
    endShape(CLOSE);
    fill(155, 155, 0);
    
    beginShape();
    vertex( 0, 0, -scale);
    vertex( -scale*cos(radians(45)), -scale*cos(radians(45)), 0);
    vertex( -scale*cos(radians(45)), scale*cos(radians(45)), 0);
    endShape(CLOSE);
    fill(125, 0, 200);
    
  }
}

void setup() {
  size(400, 400, OPENGL);
  frameRate(30);
}

int saveFlag = 0; // 1 -> SAVEON, 0 -> SAVEOFF
Frame frame = new Frame();
regularOctahedron c = new regularOctahedron(170.0);

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
