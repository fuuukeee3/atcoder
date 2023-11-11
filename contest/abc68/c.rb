n, m = gets.chomp.split(" ").map(&:to_i)
graph = Array.new(n + 1) { [] }
m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  graph[a] << b
  graph[b] << a
end

flg = false
graph[1].each do |g|
  if g == n
    flg = true
    break
  end

  graph[g].each do |gg|
    if gg == n
      flg = true
      break
    end
  end
end

puts flg ? "POSSIBLE" : "IMPOSSIBLE"
