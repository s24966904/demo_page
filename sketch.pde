int age = 34;
PImage img;


void setup() {
  img.resize(1000,1000);
  size(1000,1000);
  img = loadImage("venus1.jpg");
  
}

void draw() {
  background(255);
  
  fill(162+mouseX/20,109+mouseX/20,55+mouseX/20);
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
