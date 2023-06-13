n, m = gets.chomp.split(" ").map(&:to_i)
graph = Array.new(n + 1) { [] }
m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  graph[a] << b
  graph[b] << a
end

graph.each_with_index do |g, index|
  next if index.zero?

  puts "#{index}: {#{g.sort.join(", ")}}"
end