n, m = gets.chomp.split(" ").map(&:to_i)
high = gets.chomp.split(" ").map(&:to_i)
graph = Array.new(n + 1) { [] }
m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  graph[a] << b
  graph[b] << a
end

count = 0
graph[1..].each_with_index do |g, index|
  if g.size.zero?
    count += 1
    next
  end

  h = high[index]
  if g.all? { |gg| h > high[gg - 1] }
    count += 1
    next
  end
end

puts count
