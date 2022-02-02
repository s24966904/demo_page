int age = 34;
PImage img;


void setup() {
  size(1233,1233);
  img = loadImage("venus.jpg");
}

void draw() {
  background(255);
  
  fill(random(0,200),random(0,200),random(0,200));
  noStroke();
  
  float tiles = mouseX/10;
  float tileSize = width/tiles;
  
  translate(tileSize/2,tileSize/2);
  
  for (int x =0 ;x< tiles;x++){
    for (int y =0 ;y< tiles;y++){
      
      color c = img.get(int(x*tileSize),int(y*tileSize));
      float size = map(brightness(c),0,255,tileSize,0);
      
      ellipse(x*tileSize,y*tileSize,size,size);
    }
  }
}
