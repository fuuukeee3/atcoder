n, m = gets.chomp.split(" ").map(&:to_i)
graph = Array.new(n) { [] }
m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  a -= 1
  b -= 1
  graph[a] << b
  graph[b] << a
end

# p graph

results = Array.new(n) { 0 }
graph.each do |g|
  g.uniq.each do |gg|
    results[gg] += 1
  end
end

top = results.select { |r| r == 1 }.size
other = results.select { |r| r == 2 }.size

if top == 2 && n == top + other && !results.include?(0)
  puts "Yes"
else
  puts "No"
end
