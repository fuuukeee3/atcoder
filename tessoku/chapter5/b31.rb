n = gets.chomp.to_i
a = n / 3
b = n / 5
c = n / 7

ab = n / 15
ac = n / 21
bc = n / 35

abc = n / (3 * 5 * 7)

puts a + b + c - ab - ac - bc + abc
