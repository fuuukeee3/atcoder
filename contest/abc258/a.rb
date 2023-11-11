k = gets.chomp.to_i
div, mod = k.divmod(60)

puts printf("%02d:%02d", 21 + div, 0 + mod)
