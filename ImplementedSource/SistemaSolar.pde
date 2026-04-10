Planet[] planets = new Planet[3];

void setup() {

  size(480, 270);
 
  //| Planeta com duas luas
  planets[0] = new Planet(
    60,
    24,
    color(88, 143, 255),
    new Moon(20,  7, color(220, 228, 255), -0.08),
    new Moon(34, 11, color(255, 211, 140), 0.05)
  );

  planets[1] = new Planet(
    96,
    22,
    color(255, 143, 112),
    new Moon(24, 8, color(192, 192, 205))
  );

  planets[2] = new Planet(
    132,
    26,
    color(138, 204, 126),
    new Moon(28, 6, color(235, 235, 235))
  );
}

void draw() {

  background(255);

  pushMatrix();
    translate(width/2, height/2);

    stroke(0);
    fill(255);
    ellipse(0, 0, 64, 64);

    for (int i = 0; i < planets.length; i++ ) {
      planets[i].update();
      planets[i].display();
    }
  popMatrix();
}
