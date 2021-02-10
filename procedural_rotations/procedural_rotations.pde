// I got the rotation idea from @incre_ment on Twitter:
// https://twitter.com/incre_ment/status/1358050369327091715

PGraphics im;
int n_vertices = 400;
float t = 0;
Markov [] mark;

void setup () {
  size(400,400);
  colorMode(HSB,100);
  background(0);
 
 
  // Particle texture
  im = makeSphere(40);
    
  // Markov Chains to control the on/off state of particles
  mark = new Markov[n_vertices];
  for (int i=0; i<mark.length; i++) {
    float prob = map(i/(float)n_vertices, 0, 1, -0.003, 0.003);
    mark[i] = new Markov(abs(prob)+0.0001, 0.01, 0);
  }

}

float freq_rot = 0.4;
void draw() {
  // Time...
  t+= 0.005;
  
  // This background makes the "fade out" tail
  blendMode(MULTIPLY);
  fill(0,0,30, 3);
  rect(0,0,width,height);
  
  blendMode(ADD); // ADD -> creates the sparkles
  
  // Where do I want to draw?
  translate(200,200);
  rotate(TWO_PI * t * freq_rot);

  for (int i=0; i<n_vertices; i++) {
    mark[i].step(); // Operate Markov Chain
    if (mark[i].state==1) { // Only draw if state is 1
    
    float x_ = map(i/(float)n_vertices, 0, 1, -200, 200);
    // Question (TODO): why using these equations (instead of rotation) does not work?
    //float x = x_ * cos(sin(TAU*t+dist(x_,0,0,0)*0.1));
    //float y = x_ * sin(sin(TAU*t+dist(x_,0,0,0)*0.1));

    push();
    rotate( sin(TAU*t+dist(x_,0,0,0)*0.015) ); // This beautiful rotation comes com @incre_ment tweet.
    float x = x_;
    float y = 0;
    
    float h = map(dist(x_,0,0,0), 0, 200, 150, 60); // I added coloring with the same rationale
    float alpha = map(dist(x_,0,0,0), 0, 200, 100, 50);
    
    tint(h, 50+random(40), 50+random(30), alpha); 
    image(im, x-0.5*im.width, y-0.5*im.height);
    pop();
    }
  }
  
  //saveFrame("frames/#####.tif");
  
  
}
