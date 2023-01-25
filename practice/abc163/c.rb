n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

graph = Array.new(n + 1) { [] }
arr.each.with_index(2) do |a, index|
  graph[a] << index
end

puts graph[1..].map(&:size).join("\n")
