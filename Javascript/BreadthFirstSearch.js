//Breadth-First Search

class Graph {
  constructor() {
    this.adjacencyList = {};
  }
  addEdge(v1, v2) {
    if (!this.adjacencyList[v1]) this.adjacencyList[v1] = [];
    if (!this.adjacencyList[v2]) this.adjacencyList[v2] = [];
    this.adjacencyList[v1].push(v2);
    this.adjacencyList[v2].push(v1);
  }
  bfs(start) {
    const queue = [start];
    const visited = { [start]: true };
    const result = [];
    while (queue.length) {
      const vertex = queue.shift();
      result.push(vertex);
      this.adjacencyList[vertex].forEach(neighbor => {
        if (!visited[neighbor]) {
          visited[neighbor] = true;
          queue.push(neighbor);
        }
      });
    }
    return result;
  }
}

const graph = new Graph();
graph.addEdge("A", "B");
graph.addEdge("A", "C");
graph.addEdge("B", "D");
console.log(graph.bfs("A"));

