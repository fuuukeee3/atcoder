def dfs(graph, visited, position)
  return if visited[position]

  # 訪れた箇所はtrue
  visited[position] = true

  # 隣接する頂点をDFS
  return if graph[position].nil?
  graph[position].each do |nex|
    dfs(graph, visited, nex) unless visited[nex]
  end
end

n, m = gets.chomp.split(" ").map(&:to_i)
graph = Array.new(n + 1)
m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  (graph[a] ||= []) << b
end

$count = 0
(1..n).each do |i|
  visited = Array.new(n + 1) { false }
  dfs(graph, visited, i)
  $count += visited.count { |v| v }
end

puts $count
