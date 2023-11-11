def dfs(graph, visited, position)
  # 訪れた箇所はtrue
  visited[position]+=1
  if visited[position] == 2
    $results << position
  end

  # 隣接する頂点をDFS
  graph[position].each do |nex|
    dfs(graph, visited, nex) if visited[nex] < 2
  end
end

n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

g = Array.new(n + 1)
arr.each_with_index do |a, index|
  (g[index + 1] ||= []) << a
end

visited = Array.new(n + 1) { 0 }
$results = []
dfs(g, visited, 1)

puts $results.size
puts $results.join(" ")