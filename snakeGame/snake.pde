class Snake{
  float direction = 4;
  int size = 1;
  float speed =15;
  int score=0;
  ArrayList<Tile> body = new ArrayList<Tile>();
  
  
  Snake (float x, float y) {  
    body.add(new Tile(x, y));
  } 
  
  
  void update() { 
    // move the snake in the corresponding direction
    if(direction==0){
      body.get(0).setPos(body.get(0).getXPos(),body.get(0).getYPos() -speed);
      for(int i=body.size()-1;i>0;i--){
         body.get(i).setPos(body.get(i-1).getXPos(),body.get(i-1).getYPos());
      }
    }
    if(direction==1){
      body.get(0).setPos(body.get(0).getXPos() - speed,body.get(0).getYPos());
      for(int i=body.size()-1;i>0;i--){
         body.get(i).setPos(body.get(i-1).getXPos(),body.get(i-1).getYPos());
      }
    }
    if(direction==2){      
      body.get(0).setPos(body.get(0).getXPos()+speed,body.get(0).getYPos());
      for(int i=body.size()-1;i>0;i--){
         body.get(i).setPos(body.get(i-1).getXPos(),body.get(i-1).getYPos());
      }
    }
    if(direction==3){
      body.get(0).setPos(body.get(0).getXPos(),body.get(0).getYPos() +speed);
      for(int i=body.size()-1;i>0;i--){
         body.get(i).setPos(body.get(i-1).getXPos(),body.get(i-1).getYPos());
      }
    }
    
   // check if the snake has hit a wall
   if(body.get(0).getXPos()>width){
     body.get(0).setXPos(0);
   }else if(body.get(0).getXPos()<0){
      body.get(0).setXPos(width); 
   }
   if(body.get(0).getYPos()>height){
     body.get(0).setYPos(0);
   }else if(body.get(0).getYPos()<0){
    body.get(0).setYPos(height); 
   }
   
   //colour the snake in for each of its tiles
   for(Tile tile:body){
     fill(#2A7C1F);
     rect(tile.getXPos(),tile.getYPos(),50,50);
   }
  } 
  
  
  //change direction using WASD
  void changeDirectionUp(){
    if(direction!=3) 
      direction = 0;
  }
  void changeDirectionLeft(){
    if(direction!=2)
    direction=1;
  }
  void changeDirectionRight(){
    if(direction!=1)
    direction=2;
  }
  void changeDirectionDown(){
    if(direction!=0)
    direction=3;
  }
  
  void grow(){
   body.add(new Tile(body.get(body.size()-1).getXPos()+100,body.get(body.size()-1).getYPos()+100)); 
  }
  
  
  String getScore(){
    return str(score);
  }
}
