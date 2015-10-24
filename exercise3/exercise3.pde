final int GAME_RUN = 0;
final int GAME_OVER = 1;

float t = 0.0;
float dt = .1;

PImage restart;
int gameState;
int ballX=25,ballY=25;

void setup()
{
  size(480,480);
  frameRate(2);
  restart = loadImage("img/restart.png");
}

void draw()
{
  switch(gameState){
    
    case GAME_RUN:
    background(255);
    float spacing = 40;
    for(float x = 40;x <= 400;x += 40){
    
    stroke(0);
    fill(51,153,255);
    rect(x,0,spacing,200+sin(t)*40.0);
    rect(x,280+sin(t)*40.0,spacing,200-sin(t)*40.0);
    t += dt;
    
    ballX = mouseX;
    ballY = mouseY;
    noStroke();
    fill(255,134,35);
    ellipse(ballX,ballY,15,15);
    
    if(mouseX <= 440 && mouseX >= 40){
      if(mouseY-15 <= 200+sin(t)*40.0 || mouseY+15 >= 200-sin(t)*40.0){
        gameState = GAME_OVER;
      }
     }
    }
    break;
    
    
    case GAME_OVER:
    background(255);
    image(restart,0,0);
    if(mouseX <= restart.width && mouseY <= restart.height){
      if(mousePressed){
        gameState = GAME_RUN;
     }
    }
    break;
    
 }
} 
