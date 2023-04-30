n, q = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

sum = [0]
arr.each_with_index do |a, index|
  sum << a + sum[index]
end

q.times do
  l, r = gets.chomp.split(" ").map(&:to_i)
  puts sum[r] - sum[l - 1]
end
