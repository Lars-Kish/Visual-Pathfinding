import java.util.Random;

class Node {
  private int x;
  private int y;
  private color clr;
  private int size;
  private Graph graph;
  private Node[] connectedNodes;
  
  Node(int x,int y, int size, Graph graph){
   this.x = x;
   this.y = y;
   this.size = size;
   this.clr = color(0,0,0);
   this.graph = graph;
   this.connectedNodes = new Node[graph.numNodes];
   
  }
  
  Node(int x,int y,int size,color clr,Graph graph){
   this.x = x;
   this.y = y;
   this.clr = clr;
   this.size = size;
   this.graph = graph;
   this.connectedNodes = new Node[graph.numNodes];
  }
  
  public void drawNode(){
      stroke(clr);
     strokeWeight(size);
     point(x,y);
     
     for(int i = 0 ; i<graph.numNodes; i++){
       if (connectedNodes[i] != null){
        strokeWeight(1);
        stroke(clr);
        line(x,y, connectedNodes[i].x,connectedNodes[i].y);
       }
     }
  }
  
  public void createConnections(){
    Random rand = new Random();
    for(int i = 0 ; i< graph.numNodes; i++){
      int q = rand.nextInt(101);
      if (q < int(graph.density *100) && graph.nodes[i] != null) {
        // create a connection between the 2 points ( link eachother in an array of objects) 
        connectedNodes[i] = graph.nodes[i];
        graph.nodes[i].connectedNodes[i] = this;
      }
    }
  }
  
  
  
  
  
  
}