class Graph {
  private int numNodes, dim;
  private Node[] nodes;


  Graph(int numPoints, int dim) {
    this.numNodes = numPoints;
    this.dim = dim;
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
      nodes[i] = new Node(randx, randy, 15);
    }
  }


  public void drawGraph() {
    for (int i =0; i<numNodes-1; i++) {
      nodes[i].drawNode();
    }
  }
}