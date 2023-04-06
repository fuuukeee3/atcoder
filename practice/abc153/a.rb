h, a = gets.chomp.split(" ").map(&:to_i)
div, mod = h.divmod(a)

if mod.zero?
  puts div
else
  puts div + 1
end