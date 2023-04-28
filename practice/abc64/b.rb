n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
arr.sort!
puts arr[-1] - arr[0]