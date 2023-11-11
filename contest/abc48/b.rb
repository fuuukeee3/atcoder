a, b, x = gets.chomp.split(" ").map(&:to_i)
puts b / x - (a-1) / x
# puts a.zero? ? ans + 1 : ans