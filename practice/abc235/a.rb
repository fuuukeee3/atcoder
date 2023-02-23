n = gets.chomp.split("")
a = n.join("").to_i
b = [n[1] + n[2] + n[0]].join("").to_i
c = [n[2] + n[0] + n[1]].join("").to_i

puts a + b + c
