n, m = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

if arr.sum <= n
  puts n - arr.sum
else
  puts -1
end