n = gets.chomp.to_i
s = gets.chomp
if s.size <= n
  puts s
else
  puts s[0...n] + "..."
end