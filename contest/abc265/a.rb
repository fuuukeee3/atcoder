x, y, n = gets.chomp.split(" ").map(&:to_i)
if n < 3
  puts x * n
  return
end

if x * 3 < y
  puts x * n
else
  div, mod = n.divmod(3)
  puts x * mod + y * div
end
