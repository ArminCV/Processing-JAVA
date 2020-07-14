float x;
float y;
int red = 255;
int green = 255;
int blue = 255;

// setup only gets run once
void setup(){
  size(800, 600);
  x = 0;
  y = 0;
}

void draw(){
  noStroke();
  fill(random(red), green, random(blue));
  verticalPath();
  //fill(255, 0, 0);
  ellipse(x, y, 100, 100);
}

void verticalPath(){
  y = y + 10;
  
  // ellipse at the edge of the screen
  if(y > height){
    x = x + 100;
    y = 0;
  }
  
  if(x >= width && y >= height){
    x = 0;
    y = 0;
  }
  
}
