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
  fill(random(red), random(green), blue);
  horizontalPath();
  //fill(255, 0, 0);
  ellipse(x, y, 100, 100);
}

void horizontalPath(){
  x = x + 10;
  
  // ellipse at the edge of the screen
  if(x > width){
    x = 0;
    y = y + 100;
  }
  
  if(x >= width && y >= height){
    x = 0;
    y = 0;
  }
  
}
