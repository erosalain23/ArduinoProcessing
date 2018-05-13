import controlP5.*;
import processing.serial.*;

Serial port;

ControlP5 cp5;// creating a controlP5 object
PFont font;

void setup(){
  size(300,500);
  
  printArray(Serial.list());//prints out all available ports
  
  port=new Serial(this,"COM5",9600);
  
  cp5=new ControlP5(this);
  font = createFont("calibri light",20);
  cp5.addButton("red") ///the name of he button  text "red"
      .setPosition(60,50)// x,y coordinates
      .setSize(180,80)// the width and height
      .setFont(font)// adding a font size
      ;
  cp5.addButton("yellow").setPosition(60,150).setSize(180,80).setFont(font);
    cp5.addButton("blue").setPosition(60,250).setSize(180,80).setFont(font);
      cp5.addButton("alloff").setPosition(60,350).setSize(180,80).setFont(font);
}
void draw(){
  background(150,0,150);//bg color
  
  // title
  fill(255,255,255);// rgb color for the text
  text("LED CONTROL",100,30); // (text,x,y)
  
}

// functions that relates to every button declared 
void red(){port.write('r');}
void blue(){port.write('b');}
void yellow(){port.write('y');}
void alloff(){port.write('f');}
