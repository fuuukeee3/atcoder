n = gets.chomp.to_i
if n >= 42
  puts "AGC#{(n+1).to_s.rjust(3, '0')}"
else
  puts "AGC#{n.to_s.rjust(3, '0')}"
end