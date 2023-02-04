n, m = gets.chomp.split(" ").map(&:to_i)
graph = Array.new(n + 1) { [] }
m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  graph[a] << b
  graph[b] << a
end

p graph

count = 0
(0...n).each do |i|
  next if graph[i].size < 2

  cur_arr = [i] + graph[i]
  graph[i].each do |j|
    target_arr = [j] + graph[j]
    p [cur_arr, target_arr]
    if (cur_arr & target_arr).sort == target_arr.sort
      count += 1
      graph[i].delete(j)
      graph[j].delete(i)
    end
  end
end
puts count
