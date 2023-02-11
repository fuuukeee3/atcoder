n, m = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

graph = Array.new(n+1) { [] }
arr.each do |i|
  graph[i] << i + 1
end

q = []
results = []
graph[1..].each_with_index do |g, index|
  q << index + 1
  q << g[0]

  if g.size.zero?
    results.concat(q.reverse.compact)
    q = []
  end
end

results.concat(q.reverse)
puts results.uniq.join(" ")

