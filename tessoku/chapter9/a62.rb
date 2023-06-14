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
visited = Array.new(n + 1) { false }

m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  graph[a] << b
  graph[b] << a
end

# 頂点1から全て辿ることができればグラフ全体が連結
dfs(graph, visited, 1)

visited.shift # 頂点0はないので削除

if visited.all?
  puts "The graph is connected."
else
  puts "The graph is not connected."
end
