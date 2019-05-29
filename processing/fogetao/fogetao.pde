/**
 * Load and Display an OBJ Shape. 
 * 
 * The loadShape() command is used to read simple SVG (Scalable Vector Graphics)
 * files and OBJ (Object) files into a Processing sketch. This example loads an
 * OBJ file of a rocket and displays it to the screen. 
 */


PShape rocket;

float ry;
  
public void setup() {
  size(840, 560, P3D);
    
  rocket = loadShape("rocket.obj");
     
}

void draw() {
  background(88242);
  lights();
  translate(width/2, height/3 + 200, -0);
  float zoom = map(mouseX, 1, width, 0.8, 10);
  scale(zoom);
  rotateZ(PI);
  rotateY(ry);
  shape(rocket);
  
  ry += 0.08;
}
