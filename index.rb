def depth_first_search(graph)
  # write your code here
  discovered = Array.new(graph.keys.length, false)
  path = []
  dfs_visit(0, graph, discovered, path)
  path
end

def dfs_visit(current_node, graph, discovered, path)
  discovered[current_node] = true
  path.push(current_node)

  graph[current_node].each do |adjucent_node|
    dfs_visit(adjucent_node, graph, discovered, path) unless discovered[adjucent_node]
  end
end

p depth_first_search(
  {
    0 => [2],
    1 => [4],
    2 => [5, 0, 3],
    3 => [2],
    4 => [1, 5],
    5 => [4, 2]
  }
)
# => [0, 2, 5, 4, 1, 3]
