/* Josue Arana - Project 2 - Part 1*/
float t;

void setup()
{
 fullScreen(P2D); 
 background(20);
}

void draw(){
  background(sin(frameCount*0.01)*127+127);
  stroke(255);
  //noStroke();
  //fill(222,160,60,frameCount);
  
  strokeWeight(2);
  
  pushMatrix();
    translate(width/2, height/2);
    
    for (int i =0; i < 80; i++){
    //line(x1(t), y1(t), x2(t), y2(t));
    
    rotate(radians(frameCount*0.025)); //+x2(0.025)+y2(0.025)));
    beginShape(LINES);
    //strokeWeight(5);
    stroke(255);
    vertex(x1(t+i),y1(t+i));
    //strokeWeight(1);
    stroke(255,0,0);
    vertex(x2(t+i),y2(t+i));
    endShape();
    }
    t+= 1;
  popMatrix();
  
  //Attempt to create a rotating triangle in the middle
  //pushMatrix();
  //    beginShape();
  //       translate(width/2 - 55, height/2 - 50);
  //         triangle(30, 75, 58, 20, 86, 75);
  //   endShape();
  //popMatrix();
  
}

float x1 (float t){
  return sin(t/20)*100;// + cos(t/5)*100;
}

float y1 (float t){
  return cos(t/20)*400 ;//+ sin(t/5)*50;
}

float x2 (float t){
  return sin(t/20)*100;// + cos(t)*2; // cos(t)*10;
}

float y2 (float t){
  return cos(t/20)*200 ;//+ cos(t/12)*20;
}
