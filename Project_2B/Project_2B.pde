/* Josue Arana - Project 2 - Part 2*/

float a, b, va, vb;
float x,y;


void setup() {
  size(1000, 600, P2D);
  x  = random(width);
  y  = random(height/2);
}
void draw() {
  background(255);
  fill(#0B2052,60);
  
  for(y = 0; y <= height; y+=40){
    for(x = 0; x <= width; x+=20){
    
      pushMatrix();
        translate(x,y);
        if (keyPressed != true){
          rotate(radians(frameCount+(x*0.25)+(y*0.5)));
        } else {
          rotate(noise(radians(2*frameCount+(x*0.25)+(y*0.5))));
        }
        
        strokeWeight(.5);  
        triangle(mouseX, mouseY, 58, 20, mouseY, 75);
      popMatrix();
    } //end x loop
  } //end y loop
  
}

void keyPressed(){
  if (key == TAB){
     rotate(noise(2*frameCount+(x*0.25)+(y*0.5)));
  }
}
