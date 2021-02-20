
void setup() {
  size(600,600);
  smooth(16);
}

int n_lines = 25;
float N = 20;
void draw() {
  noStroke();
  fill(255, 50);
  background(0);
  
  for (int i=0; i<n_lines; i++) {
    float y0 = map(i, 0, n_lines-1, 0, height);
    float phase = 0;
    for (int j=0; j<width*N; j++) {
      float x0 = (float)j/(float)N;
      float d = sqrt( sq(x0-(width/2)) + sq(y0-(height/2)));
      //phase += 0.01*d/width;
      phase += 0.0005 * width / (d+50);
      //println(phase);
      
      float y = y0 + 5*sin(phase * TWO_PI);// / (d+7);
      
      circle(x0, y, 4);  
    }
  }
  saveFrame("frames/frequency_modulation.png");

}
