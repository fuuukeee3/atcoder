r = 0
12.times do
  s = gets.chomp
  r += 1 if s.include?("r")
end

puts r