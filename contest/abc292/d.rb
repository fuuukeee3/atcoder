n, m = gets.chomp.split(" ").map(&:to_i)
graph = Array.new(n) { [] }
m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  a -= 1
  b -= 1
  graph[a] << b
  graph[b] << a
end

p graph