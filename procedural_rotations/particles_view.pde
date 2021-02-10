PGraphics makeSphere(int d) {
  PGraphics p;
  p = createGraphics(d,d);
  p.beginDraw();
  p.colorMode(HSB,100);
  p.noStroke();
  p.fill(100,200/(float)d);
  for (int i=0; i<d/2; i++) {
    p.circle(0.5*d, 0.5*d, i); 
  }
  p.endDraw();
  return p;
}


class Markov {
  float probAB;
  float probBA;
  int state;
  Markov (float pAB, float pBA, int init) {
    probAB = pAB;
    probBA = pBA;
    state = init;
  }
  void step() {
    if (state==0) {
      if (random(100) < (100*probAB)) state=1; 
    }
    if (state==1) {
      if (random(100) < (100*probBA)) state=0; 
    }
  }
}
