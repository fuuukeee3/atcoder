n = gets.chomp.to_i
t = gets.chomp.split(" ").map(&:to_i)
sum = t.sum

m = gets.chomp.to_i
m.times do
  pp, x = gets.chomp.split(" ").map(&:to_i)

  sa = t[pp - 1] - x
  puts sum - sa
end
