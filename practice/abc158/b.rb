n, a, b = gets.chomp.split(" ").map(&:to_i)
div, mod = n.divmod(a + b)
count = a * div

puts count + [mod, a].min