class Planet {

  float theta;
  float diameter;
  float distance;
  float orbitspeed;
  int bodyColor;

  Moon moon;
  Moon moon2;   // Lua adicionada

  Planet(float distance_, float diameter_, int bodyColor_, Moon moon_) {
    this(distance_, diameter_, bodyColor_, moon_, null);
  }

  Planet(float distance_, float diameter_, int bodyColor_, Moon moon_, Moon moon2_) {
    distance = distance_;
    diameter = diameter_;
    bodyColor = bodyColor_;
    theta = 0;
    orbitspeed = random(0.01, 0.03);
    moon = moon_;
    moon2 = moon2_;
  }

  void update() {
    theta += orbitspeed;

    moon.update();

    if (moon2 != null) {
      moon2.update();
    }
  }

  void display() {

    pushMatrix();

      rotate(theta);
      translate(distance, 0);
      
      stroke(0);
      fill(bodyColor);
      ellipse(0, 0, diameter, diameter);

      moon.display();

      if (moon2 != null) {
        moon2.display();
      }

    popMatrix();
  }
}
