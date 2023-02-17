s = gets.chomp.split(" ")
t = gets.chomp.split(" ")

sa = 0
3.times do |i|
  sa += 1 if s[i] != t[i]
end

if sa == 2
  puts "No"
else
  puts "Yes"
end