n, q = gets.chomp.split(" ").map(&:to_i)
arr = []
n.times do
  arr << gets.chomp.split(" ").map(&:to_i)
end

q.times do
  s, t = gets.chomp.split(" ").map(&:to_i)
  puts arr[s - 1][t]
end
