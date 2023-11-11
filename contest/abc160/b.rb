n = gets.chomp.to_i
uresisa = 0
div, mod = n.divmod(500)
uresisa += div * 1000

n = mod
div, mod = n.divmod(5)
uresisa += div * 5

puts uresisa