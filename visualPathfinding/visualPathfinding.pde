//Erdos-Renyi model for building random graphs

// Visually display the algorithms for the following
//A*
//Dijkstra's
//bfs

import java.util.Random;
int numPoints = 10, graphDim = 800;
Graph graph1;
float den = .2;

void setup() {
  size(800, 800);
  graph1 = new Graph(numPoints, graphDim,den);
  graph1.createPoints();
}

void draw() { 
  graph1.drawGraph();
}