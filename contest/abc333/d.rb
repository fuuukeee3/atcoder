n = gets.chomp.to_i
graph = Array.new(n + 1) { [] }
(n - 1).times do
  u1, u2 = gets.chomp.split(" ").map(&:to_i)
  graph[u1] << u2
  graph[u2] << u1
end

leafs = []
graph.each_with_index do |g, i|
  leafs << i if g.size == 1
end

p graph
p leafs

counts = []

leafs.each do |leaf|
  # 未到達地点の管理
  dist = Array.new(n + 1) { -1 }

  q = []
  q.push(1)
  dist[1] = 0

  count = 1
  loop do
    break if q.size.zero?

    pos = q.shift
    count

    graph[pos].each do |to|
      # 未到達地点の場合更新
      if dist[to] == -1
        dist[to] = dist[pos] + 1
        q.push(to)
      end
    end
  end

  p count
end