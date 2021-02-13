
void setup() {
  size(400,400);
  smooth(4);
}

float t = random(100);
float f = 0.3;
float [] rads = {300, 250, 200, 100};
float [] alphas = {50, 60, 150, 205};
void draw() {
  t = t + 1/frameRate;
  fill(0,30);
  blendMode(MULTIPLY);
  rect(0,0,width,height);
  blendMode(BLEND);
  for (int i=0; i<1000; i++) {
    strokeWeight(2);
    stroke(random(255), random(255), random(255));
    point(random(width), random(height)); 
  }
  float angle = TWO_PI * cos(TWO_PI * f * t);
 
  translate(width/2, height/2);
  rotate(TWO_PI * f * 0.2 * t);
  translate(-width/2, -height/2);
  strokeWeight(3);
 
  push();
  translate(width/2, height/2);

  rotate(TWO_PI * f * t * 0.35);


  for (int i=0; i<rads.length; i++) {
    stroke(random(255), random(255), random(255));
    fill(255, alphas[i]);
    float r = map(sq(cos(TWO_PI * f * 0.9 * t)), 0, 1, 0.2, 0.8);
    if (angle>0) {
      arc(0, 0, rads[i]*r, rads[i], 0.0, angle); 
    }
    else {
      arc(0, 0, rads[i], rads[i]*r, TWO_PI+angle, TWO_PI);      
    }
  }
  pop();
  
  push();
  translate(width*0.8, height*0.2);
  angle = TWO_PI * cos(TWO_PI * f * 0.7 * t);
  rotate(TWO_PI * f * t * 0.35);
  for (int i=0; i<rads.length; i++) {
        stroke(random(255), random(255), random(255));
    fill(255, alphas[i]);
    float r = map(sq(cos(TWO_PI * f * 0.9 * t)), 0, 1, 0.2, 0.8);
    if (angle>0) {
      arc(0, 0, rads[i]*r/4, rads[i]/4, 0.0, angle); 
    }
    else {
      arc(0, 0, rads[i]/4, rads[i]*r/4, TWO_PI+angle, TWO_PI);      
    }
  }
  pop();
  
  push();
  translate(width*0.2, height*0.8);
  angle = TWO_PI * cos(TWO_PI * f * 0.3 * t);
  rotate(TWO_PI * f * t * 0.35);
  for (int i=0; i<rads.length; i++) {
        stroke(random(255), random(255), random(255));
    fill(255, alphas[i]);
    float r = map(sq(cos(TWO_PI * f * 0.9 * t)), 0, 1, 0.2, 0.8);
    if (angle>0) {
      arc(0, 0, rads[i]*r/4, rads[i]/4, 0.0, angle); 
    }
    else {
      arc(0, 0, rads[i]/4, rads[i]*r/4, TWO_PI+angle, TWO_PI);      
    }
  }
  pop();

  push();
  translate(width*0.2, height*0.2);
  angle = TWO_PI * cos(TWO_PI * f * 1.2 * t);
  rotate(TWO_PI * f * t * 0.35);
  for (int i=0; i<rads.length; i++) {
        stroke(random(255), random(255), random(255));
    fill(255, alphas[i]);
    float r = map(sq(cos(TWO_PI * f * 0.9 * t)), 0, 1, 0.2, 0.8);
    if (angle>0) {
      arc(0, 0, rads[i]*r/4, rads[i]/4, 0.0, angle); 
    }
    else {
      arc(0, 0, rads[i]/4, rads[i]*r/4, TWO_PI+angle, TWO_PI);      
    }
  }
  pop();
  
  push();
  translate(width*0.8, height*0.8);
  angle = TWO_PI * cos(TWO_PI * f * 0.9 * t);
  rotate(TWO_PI * f * t * 0.35);
  for (int i=0; i<rads.length; i++) {
        stroke(random(255), random(255), random(255));
    fill(255, alphas[i]);
    float r = map(sq(cos(TWO_PI * f * 0.9 * t)), 0, 1, 0.2, 0.8);
    if (angle>0) {
      arc(0, 0, rads[i]*r/4, rads[i]/4, 0.0, angle); 
    }
    else {
      arc(0, 0, rads[i]/4, rads[i]*r/4, TWO_PI+angle, TWO_PI);      
    }
  }
  pop();

}
