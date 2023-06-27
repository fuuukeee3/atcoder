n, m = gets.chomp.split(" ").map(&:to_i)
graph = Array.new(n + 1) { [] }
m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  graph[a] << b
  graph[b] << a
end

# 未到達地点の管理
dist = Array.new(n+1) { -1 }

q = []
q.push(1)
dist[1] = 0

loop do
  break if q.size.zero?

  pos = q.shift
  graph[pos].each do |to|
    # 未到達地点の場合更新
    if dist[to] == -1
      dist[to] = dist[pos] + 1
      q.push(to)
    end
  end
end

puts dist[1..].join("\n")
