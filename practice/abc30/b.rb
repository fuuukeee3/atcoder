n, m = gets.chomp.split(" ").map(&:to_i)
n %= 12
a = (n * 30.0) + (m / 2.0)
b = 6.0 * m

puts [(a-b).abs, 360 - (a-b).abs].min