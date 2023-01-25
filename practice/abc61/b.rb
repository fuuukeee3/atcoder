n, m = gets.chomp.split(" ").map(&:to_i)
graph = Array.new(n + 1) { [] }
m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  graph[a] << b
  graph[b] << a
end

puts graph[1..].map(&:size).join("\n")
