//Erdos-Renyi model for building random graphs

// Visually display the algorithms for the following
//A*
//Dijkstra's
//bfs

import java.util.Random;
int numPoints = 25, graphDim = 600;
Graph graph1;


void setup() {
  size(600, 600);
  graph1 = new Graph(numPoints, graphDim);
  graph1.createPoints();
}

void draw() { 
  graph1.drawGraph();
}