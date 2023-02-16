v, a, b, c = gets.chomp.split(" ").map(&:to_i)

tmp = v % (a + b + c)

if tmp >= a
  tmp -= a
else
  puts "F"
  return
end

if tmp >= b
  tmp -= b
else
  puts "M"
  return
end

if tmp >= c
  tmp -= c
else
  puts "T"
  return
end
