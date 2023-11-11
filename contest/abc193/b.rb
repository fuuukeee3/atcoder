n = gets.chomp.to_i
min = 9999999999
n.times do
  a, p, x = gets.chomp.split(" ").map(&:to_i)
  if x - a > 0
    min = [p, min].min
  end
end

if min == 9999999999
  puts -1
else
  puts min
end