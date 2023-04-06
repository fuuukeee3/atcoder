n, k, m = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

sa = n * m - arr.sum

if sa > k
  puts -1
else
  puts [0, sa].max
end