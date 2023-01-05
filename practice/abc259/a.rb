n, m, x, t, d = gets.chomp.split(" ").map(&:to_i)

if m < x
  baby = t - (x * d)
  puts baby + (m * d)
else
  puts t
end
