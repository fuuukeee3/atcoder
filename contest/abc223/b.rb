s = gets.chomp
results= [s]
(s.size).times do
  s = s[1..] + s[0]
  results << s
end

puts results.sort[0]
puts results.sort[-1]
