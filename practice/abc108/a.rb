k = gets.chomp.to_i
if k.even?
  puts (k / 2) * (k / 2)
else
  puts (k / 2) * ((k / 2) + 1)
end
