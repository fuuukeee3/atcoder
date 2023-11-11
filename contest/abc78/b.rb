x, y, z = gets.chomp.split(" ").map(&:to_i)
div, mod = x.divmod(y + z)

if mod == z
  puts div
else
  puts div - 1
end