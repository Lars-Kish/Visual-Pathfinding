class Node {
  private int x;
  private int y;
  private color clr;
  private int size;
  
  
  Node(int x,int y, int size){
   this.x = x;
   this.y = y;
   this.size = size;
  }
  
  Node(int x,int y,int size,color clr){
   this.x = x;
   this.y = y;
   this.clr = clr;
   this.size = size;
  }
  
  public void drawNode(){
     strokeWeight(size);
     point(x,y);
  }
  
  
  
  
  
  
}