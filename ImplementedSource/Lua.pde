class Moon {
  float theta;
  float diameter;
  float distance;
  float orbitspeed;
  int bodyColor;

  Moon(float distance_, float diameter_, int bodyColor_) {
    this(distance_, diameter_, bodyColor_, random(-0.1, 0.1));
  }

  Moon(float distance_, float diameter_, int bodyColor_, float orbitspeed_) {
    distance = distance_;
    diameter = diameter_;
    bodyColor = bodyColor_;
    theta = 0;
    orbitspeed = orbitspeed_;
  }

  void update() {
    theta += orbitspeed;
  }

  void display() {
    pushMatrix();
    rotate(theta);
    translate(distance, 0);
    stroke(0);
    fill(bodyColor);
    ellipse(0, 0, diameter, diameter);
    popMatrix();
  }
}