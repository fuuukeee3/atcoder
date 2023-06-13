n, m = gets.chomp.split(" ").map(&:to_i)
graph = Array.new(n+1) {0}
m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  graph[a] += 1
  graph[b] += 1
end

max = graph.max
puts graph.find_index(max)
