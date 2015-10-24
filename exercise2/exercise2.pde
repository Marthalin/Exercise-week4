float t = 0.0;
float dt = .1;

void setup()
{
  size(480,480);
  frameRate(2);
}

void draw()
{
  background(255);
  float spacing = 40;
  for(float x = 40;x <= 400;x += 40){
  
  stroke(0);
  fill(51,153,255);
  rect(x,0,spacing,200+sin(t)*40.0);
  rect(x,280+sin(t)*40.0,spacing,200-sin(t)*40.0);
  t += dt;
  } 
}
