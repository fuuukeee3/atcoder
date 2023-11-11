a, b = gets.chomp.split(" ").map(&:to_i)
d = Math.sqrt(a ** 2.0 + b ** 2.0)

puts "#{a / d} #{b / d}"
