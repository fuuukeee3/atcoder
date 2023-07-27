n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
counts = 1
arr.sort!
n.times do |i|
  counts *= (arr[i] - i)
  counts %= 1000000007
end

puts counts
