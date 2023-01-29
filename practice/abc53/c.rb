x = gets.chomp.to_i
div, mod = x.divmod(11)

add = 0
case
when mod.zero?
  add += 0
when mod <= 6
  add += 1
else
  add += 2
end

puts div * 2 + add
