# bfsで各頂点への最短距離を返す
# @param [Array] graph
# @param [Int] start 探索開始位置
# @return [Array<Int>] 最短距離配列
def bfs(graph, start)
  q = []
  dist = Array.new(graph.size) { -1 } # 各頂点の最短経路を格納

  q.push(start)
  dist[start] = 0

  while q.size > 0
    v = q.shift

    # 頂点から繋がる頂点をqに格納
    # 探索済み頂点はスキップ
    # 最短経路をdistに格納
    graph[v].each do |vv|
      next unless dist[vv] == -1
      q.push(vv)
      dist[vv] = dist[v] + 1
    end
  end

  dist
end


n, m = gets.chomp.split(" ").map(&:to_i)
graph = Array.new(n) { [] }
m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  # a -= 1
  # b -= 1
  graph[a] << b
  graph[b] << a
end

p graph
p bfs(graph, 0)
=begin
8 12
0 1
0 4
0 2
1 3
1 7
1 4
2 6
4 7
3 7
3 5
7 6
6 5
=end
