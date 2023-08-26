def dfs(graph, visited, position, sum)
  # 訪れた箇所はtrue
  visited[position] = true

  $ans = sum > $ans ? sum : $ans

  # 隣接する頂点をDFS
  graph[position].each_with_index do |v, i|
    if !visited[i] && v
      dfs(graph, visited, i, sum+v)
    end
  end
  visited[position] = false
end

n, m = gets.chomp.split(" ").map(&:to_i)

graph = Array.new(n + 1) { [] }

m.times do
  a, b, c = gets.chomp.split(" ").map(&:to_i)
  graph[a][b] = c
  graph[b][a] = c
end

$ans = 0
visited = Array.new(n + 1) { false }

(1..n).each do |i|
  dfs(graph, visited, i, 0)
end

puts $ans