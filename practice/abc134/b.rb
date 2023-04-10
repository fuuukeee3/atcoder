n, d = gets.chomp.split(" ").map(&:to_i)
div, mod = n.divmod(d * 2 + 1)
div += 1 unless mod.zero?
puts div