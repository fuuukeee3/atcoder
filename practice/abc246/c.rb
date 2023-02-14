n, k, x = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

sorted = arr.sort.reverse
sorted.each_with_index do |s, index|
  break if k == 0
  use = s / x
  use = k if use >= k
  k -= use
  sorted[index] = sorted[index] - use * x
end

sorted = sorted.sort.reverse
sorted.each_with_index do |s, index|
  break if k == 0
  k -= 1
  sorted[index] = [sorted[index] - x, 0].max
end

puts sorted.sum