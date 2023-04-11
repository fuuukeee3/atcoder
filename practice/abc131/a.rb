s = gets.chomp

case
when s[0] == s[1]
  puts "Bad"
when s[1] == s[2]
  puts "Bad"
when s[2] == s[3]
  puts "Bad"
else
  puts "Good"
end