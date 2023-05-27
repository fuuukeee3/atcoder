n = gets.chomp.to_i
s = gets.chomp
t = gets.chomp

s.tr!("10", "lo")
t.tr!("10", "lo")

if s == t
  puts "Yes"
else
  puts "No"
end