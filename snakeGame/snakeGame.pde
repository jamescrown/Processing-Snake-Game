Snake mySnake = new Snake(1000,500);
//game is set for 1920x1080
//must be scaled.

void setup(){
  frameRate(60);
  noStroke();
  fullScreen();

}
void draw(){
  background(#0D0303);
  mySnake.update();
  textSize(32);
  fill(#B72138);
  text("Score:", 10, 60);
  text(mySnake.getScore(), 150, 60);
  text("Press ESC to exit", 10, 1000);
  text("Press C to grow", 1600, 1000);
}



void keyPressed(){
  if(key=='w'){
   mySnake.changeDirectionUp(); 
  }if(key=='a'){
   mySnake.changeDirectionLeft(); 
  }if(key=='s'){
   mySnake.changeDirectionDown(); 
  }if(key=='d'){
   mySnake.changeDirectionRight(); 
  }if(key=='c'){
   mySnake.grow(); 
  }
}
  
