def dfs(graph, visited, position)
  if position == $n
    puts $path.join(" ")
    exit
  end

  visited[position] = true

  graph[position].each do |nex|
    unless visited[nex]
      $path.push(nex)
      dfs(graph, visited, nex)
      $path.pop
    end
  end
end

n, m = gets.chomp.split(" ").map(&:to_i)
$n = n
graph = Array.new(n + 1) { [] }
visited = Array.new(n + 1) { false }
$path = []

m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  graph[a] << b
  graph[b] << a
end

$path.push(1)
dfs(graph, visited, 1)
# p $path
