class Graph {
  private int dim;
  public int numNodes;
  public float density; // density will be used in created connections based on the Endos-Renyi model. A value of 1 represents a fully connected graph.
  public Node[] nodes;


  Graph(int numPoints, int dim, float density) {
    this.numNodes = numPoints;
    this.dim = dim;
    this.density = density;
  }

// n is number of verticies
// p is probability edge(i,j) exists 
// m is number of edges


  public void createPoints() {
    Random rand = new Random();
    nodes = new Node[numPoints];

    for (int i =0; i<numNodes; i++) {
      int randx=rand.nextInt(int(dim));
      int randy=rand.nextInt(int(dim));
      nodes[i] = new Node(randx, randy, 20,color(rand.nextInt(256),rand.nextInt(256),rand.nextInt(256)),this);
      //nodes[i].createConnections();
    }
    
    // after we create all the nodes, make the connections
    for (int i =0; i<numNodes; i++) {
      nodes[i].createConnections();
    }
    
  }


  public void drawGraph() {
    for (int i =0; i<numNodes; i++) {
      nodes[i].drawNode();
    }
  }
}