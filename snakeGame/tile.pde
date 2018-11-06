class Tile{
  float ypos, xpos;
  Tile(float x, float y){
    xpos = x;
    ypos = y;
  }  
  
  void setPos(float x, float y){
    xpos = x;
    ypos = y;
  }
  float getXPos(){
    return xpos;
  }
  float getYPos(){
    return ypos; 
  }
  void setXPos(float x){
    xpos = x;
  }
  void setYPos(float y){
    ypos = y;
  }
}
