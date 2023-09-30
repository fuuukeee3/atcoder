n = gets.chomp.to_i
s = gets.chomp

if s.include?("ABC")
  puts s.index("ABC") + 1
else
  puts -1
end