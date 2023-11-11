n = gets.chomp.to_i

i = 0
total = 0

while total < n
  i += 1
  total += i
end

puts i
