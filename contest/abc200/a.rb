n = gets.chomp.to_i
div, mod = n.divmod(100)

if mod.zero?
  puts div
else
  puts div + 1
end