n = gets.chomp.to_i

f = 0
a = 0
n.times do
  s = gets.chomp
  if s == "For"
    f += 1
  else
    a += 1
  end
end

if f > a
  puts "Yes"
else
  puts "No"
end
