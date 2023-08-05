def dfs(graph, visited, position)
  # 訪れた箇所はtrue
  visited[position] = true

  # 隣接する頂点をDFS
  graph[position].each do |nex|
    dfs(graph, visited, nex) unless visited[nex]
  end
end

n, m = gets.chomp.split(" ").map(&:to_i)
graph = Array.new(n + 1) { [] }
m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  graph[a] << b
end

results = []
(1..n).each do |i|
  visited = Array.new(n + 1) { false }
  dfs(graph, visited, i)

  if visited[1..].all?
    results << i
  end
end

if results.size == 1
  puts results[0]
else
  puts -1
end
