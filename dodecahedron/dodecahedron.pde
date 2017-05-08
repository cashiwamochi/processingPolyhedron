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

class Dodecahedron {
  float gt = (sqrt(5) + 1)/2;
  float minus = 1 + ((sqrt(5) - 1)/2)/2;
  float scale;
  Dodecahedron(float a) {
    scale = a;
  }
  void draw() {
    stroke(10);
    //pushMatrix();
    //fill(255, 0, 0);
    PImage img; 
    img = loadImage("a1.jpg");

    beginShape();
    //texture(img);
    vertex( 1*scale, 0*scale, -minus*scale); //a
    vertex( cos(radians(72))*scale, sin(radians(72))*scale, -minus*scale);  //b
    vertex( -cos(radians(36))*scale, sin(radians(36))*scale, -minus*scale);  //c
    vertex( -cos(radians(36))*scale, -sin(radians(36))*scale, -minus*scale);  //d
    vertex( cos(radians(72))*scale, -sin(radians(72))*scale, -minus*scale);  //e
    endShape(CLOSE);
    fill(0, 255, 0);
    beginShape();
    vertex( 1*scale, 0*scale, -minus*scale);//a
    vertex( cos(radians(72))*scale, sin(radians(72))*scale, -minus*scale);//b
    vertex( gt*cos(radians(72))*scale, gt*sin(radians(72))*scale, (1 - minus)*scale);//h
    vertex( gt*cos(radians(36))*scale, gt*sin(radians(36))*scale, (gt - minus)*scale);//g
    vertex( gt*scale, 0.0*scale, (1 - minus)*scale);//f
    endShape(CLOSE);
    fill(0, 0, 255);
    beginShape();
    vertex( cos(radians(72))*scale, sin(radians(72))*scale, -minus*scale);//b
    vertex( -cos(radians(36))*scale, sin(radians(36))*scale, -minus*scale);//c
    vertex( -gt*cos(radians(36))*scale, gt*sin(radians(36))*scale, (1 - minus)*scale);//j
    vertex( -gt*cos(radians(72))*scale, gt*sin(radians(72))*scale, (gt - minus)*scale);//i
    vertex( gt*cos(radians(72))*scale, gt*sin(radians(72))*scale, (1 - minus)*scale);//h
    endShape(CLOSE);
    fill(255, 255, 0);
    beginShape();
    vertex( -cos(radians(36))*scale, sin(radians(36))*scale, -minus*scale);//c
    vertex( -cos(radians(36))*scale, -sin(radians(36))*scale, -minus*scale);//d
    vertex( -gt*cos(radians(36))*scale, -gt*sin(radians(36))*scale, (1 - minus)*scale);//l
    vertex( -gt*scale, 0.0*scale, (gt - minus)*scale);//k
    vertex( -gt*cos(radians(36))*scale, gt*sin(radians(36))*scale, (1 - minus)*scale);//j
    endShape(CLOSE);
    fill(255, 0, 255);
    beginShape();
    vertex( -cos(radians(36))*scale, -sin(radians(36))*scale, -minus*scale);//d
    vertex( cos(radians(72))*scale, -sin(radians(72))*scale, -minus*scale);//e
    vertex( gt*cos(radians(72))*scale, -gt*sin(radians(72))*scale, (1 - minus)*scale);//n
    vertex( -gt*cos(radians(72))*scale, -gt*sin(radians(72))*scale, (gt - minus)*scale);//m
    vertex( -gt*cos(radians(36))*scale, -gt*sin(radians(36))*scale, (1 - minus)*scale);//l
    endShape(CLOSE);
    fill(0, 255, 255);
    beginShape();
    vertex( 1*scale, 0*scale, -minus*scale);//a
    vertex( cos(radians(72))*scale, -sin(radians(72))*scale, -minus*scale);//e
    vertex( gt*cos(radians(72))*scale, -gt*sin(radians(72))*scale, (1 - minus)*scale);//n
    vertex( gt*cos(radians(36))*scale, -gt*sin(radians(36))*scale, (gt - minus)*scale);//o
    vertex( gt*scale, 0.0*scale, (1 - minus)*scale);//f
    endShape(CLOSE);
    fill(255, 255, 255);
    beginShape();
    vertex( gt*scale, 0.0*scale, (1 - minus)*scale);//f
    vertex( gt*cos(radians(36))*scale, -gt*sin(radians(36))*scale, (gt - minus)*scale);//o
    vertex( cos(radians(36))*scale, -sin(radians(36))*scale, (gt + 1 - minus)*scale);//r
    vertex( cos(radians(36))*scale, sin(radians(36))*scale, (gt + 1 - minus)*scale);//s
    vertex( gt*cos(radians(36))*scale, gt*sin(radians(36))*scale, (gt - minus)*scale);//g
    endShape(CLOSE);
    fill(100, 150, 255);
    beginShape();
    vertex( gt*cos(radians(72))*scale, -gt*sin(radians(72))*scale, (1 - minus)*scale);//n
    vertex( -gt*cos(radians(72))*scale, -gt*sin(radians(72))*scale, (gt - minus)*scale);//m
    vertex( -cos(radians(72))*scale, -sin(radians(72))*scale, (gt + 1 - minus)*scale);//q
    vertex( cos(radians(36))*scale, -sin(radians(36))*scale, (gt + 1 - minus)*scale);//r
    vertex( gt*cos(radians(36))*scale, -gt*sin(radians(36))*scale, (gt - minus)*scale);//o
    endShape(CLOSE);
    fill(255, 100, 150);
    beginShape();
    vertex( -gt*cos(radians(36))*scale, -gt*sin(radians(36))*scale, (1 - minus)*scale);//l
    vertex( -gt*scale, 0.0*scale, (gt - minus)*scale);//k
    vertex( -1.0*scale, 0.0*scale, (gt + 1 - minus)*scale);//p
    vertex( -cos(radians(72))*scale, -sin(radians(72))*scale, (gt + 1 - minus)*scale);//q
    vertex( -gt*cos(radians(72))*scale, -gt*sin(radians(72))*scale, (gt - minus)*scale);//m
    endShape(CLOSE);
    fill(150, 255, 100);
    beginShape();
    vertex( -gt*cos(radians(36))*scale, gt*sin(radians(36))*scale, (1 - minus)*scale);//j
    vertex( -gt*cos(radians(72))*scale, gt*sin(radians(72))*scale, (gt - minus)*scale);//i
    vertex( -cos(radians(72))*scale, sin(radians(72))*scale, (gt + 1 - minus)*scale);//t
    vertex( -1.0*scale, 0.0*scale, (gt + 1 - minus)*scale);//p
    vertex( -gt*scale, 0.0*scale, (gt - minus)*scale);//k
    endShape(CLOSE);
    fill(255, 150, 100);
    beginShape();
    vertex( gt*cos(radians(72))*scale, gt*sin(radians(72))*scale, (1 - minus)*scale);//h
    vertex( gt*cos(radians(36))*scale, gt*sin(radians(36))*scale, (gt - minus)*scale);//g
    vertex( cos(radians(36))*scale, sin(radians(36))*scale, (gt + 1 - minus)*scale);//s
    vertex( -cos(radians(72))*scale, sin(radians(72))*scale, (gt + 1 - minus)*scale);//t
    vertex( -gt*cos(radians(72))*scale, gt*sin(radians(72))*scale, (gt - minus)*scale);//i
    endShape(CLOSE);
    fill(150, 150, 100);
    beginShape();
    vertex( cos(radians(36))*scale, sin(radians(36))*scale, (gt + 1 - minus)*scale);//s
    vertex( cos(radians(36))*scale, -sin(radians(36))*scale, (gt + 1 - minus)*scale);//r
    vertex( -cos(radians(72))*scale, -sin(radians(72))*scale, (gt + 1 - minus)*scale);//q
    vertex( -1.0*scale, 0.0*scale, (gt + 1 - minus)*scale);//p
    vertex( -cos(radians(72))*scale, sin(radians(72))*scale, (gt + 1 - minus)*scale);//t
    endShape(CLOSE);
  }

  void draw2() {
    stroke(10);
    fill(255, 255, 255);

    beginShape();
    pushMatrix();
    vertex( 1*scale, 0*scale, -minus*scale);
    vertex( cos(radians(72))*scale, sin(radians(72))*scale, -minus*scale);
    vertex( -cos(radians(36))*scale, sin(radians(36))*scale, -minus*scale);
    vertex( -cos(radians(36))*scale, -sin(radians(36))*scale, -minus*scale);
    vertex( cos(radians(72))*scale, -sin(radians(72))*scale, -minus*scale);
    endShape(CLOSE);
    beginShape();
    rotateY(radians(64));
    rotateZ(radians(180));
    vertex( 1*scale, 0*scale, -minus*scale);
    vertex( cos(radians(72))*scale, sin(radians(72))*scale, -minus*scale);
    vertex( -cos(radians(36))*scale, sin(radians(36))*scale, -minus*scale);
    vertex( -cos(radians(36))*scale, -sin(radians(36))*scale, -minus*scale);
    vertex( cos(radians(72))*scale, -sin(radians(72))*scale, -minus*scale);
    endShape(CLOSE);
    beginShape();
    popMatrix();
    rotateX(radians(72));
    rotateY(radians(64));
    rotateZ(radians(180));
    vertex( 1*scale, 0*scale, -minus*scale);
    vertex( cos(radians(72))*scale, sin(radians(72))*scale, -minus*scale);
    vertex( -cos(radians(36))*scale, sin(radians(36))*scale, -minus*scale);
    vertex( -cos(radians(36))*scale, -sin(radians(36))*scale, -minus*scale);
    vertex( cos(radians(72))*scale, -sin(radians(72))*scale, -minus*scale);
    endShape(CLOSE);
  }
}

void setup() {
  size(400, 400, OPENGL);
  frameRate(30);
}

int saveFlag = 0; // 1 -> SAVEON, 0 -> SAVEOFF
Frame frame = new Frame();
Dodecahedron d = new Dodecahedron(70.0);


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