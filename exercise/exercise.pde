void setup()
{
  size(480,480);
}

void draw()
{
  background(0);
  float spacing = 48;
  for(float x = 0; x <= width; x += spacing){
    
    float transparent = 255-abs(x-mouseX)/width*255;
    noStroke();
    fill(0,255,0,transparent);
    rect(x,0,spacing,height);
  }
}
