require 'set'
n = gets.chomp.to_i
graph = Array.new(n) { [] }
(n - 1).times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  a -= 1
  b -= 1
  graph[a] << b
  graph[b] << a
end

set = Set.new
graph.each do |g|
  set << g
end

new_arr = set.sort { |a, b| a.size <=> b.size }
if new_arr[0].size == 1 && new_arr[1].size == n - 1
  puts "Yes"
else
  puts "No"
end