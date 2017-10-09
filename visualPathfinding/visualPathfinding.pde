//Erdos-Renyi model for building random graphs

// Visually display the algorithms for the following
//A*
//Dijkstra's
//bfs

import java.util.Random;
Node[] nodes;
int numPoints = 25;
int dim = 600;

void setup(){
  size(600,600);
  Random rand = new Random();
  nodes = new Node[numPoints];
  
  for(int i =0;i<numPoints;i++){
    int randx=rand.nextInt(int(dim*.7))+int(dim*.3);
    int randy=rand.nextInt(int(dim*.7))+int(dim*.3);
    nodes[i] = new Node(randx,randy,15);
  }
}

void draw(){ 
  for(int i =0; i<numPoints-1;i++){
   nodes[i].drawNode();
  }
  
}