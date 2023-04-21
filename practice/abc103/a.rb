a1, a2, a3 = gets.chomp.split(" ").map(&:to_i)
a = [a1, a2, a3].sort
puts (a[1] - a[0]) + (a[2] - a[1])