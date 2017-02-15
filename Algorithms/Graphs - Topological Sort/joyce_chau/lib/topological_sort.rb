require_relative 'graph'

# Implementing topological sort using both Khan's and Tarian's algorithms

def topological_sort(vertices)
  in_edge_counts = {}
  queue = []
  sorted = []

  vertices.each do |vertex|
    in_edge_counts[vertex] = vertex.in_edges.count
    queue << vertex if vertex.in_edges.empty?
  end

  until queue.empty?
    vertex = queue.shift
    sorted << vertex
    vertex.out_edges.each do |out_edge|
      to_vertex = out_edge.to_vertex
      in_edge_counts[to_vertex] -= 1
      queue << to_vertex if in_edge_counts[to_vertex] == 0
    end
  end

  sorted
end
