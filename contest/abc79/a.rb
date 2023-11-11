n = gets.chomp

case
when n[0] == n[1] && n[0] == n[2]
  puts "Yes"
when n[1] == n[2] && n[1] == n[3]
  puts "Yes"
when n[0] == n[1] && n[0] == n[2] && n[0] == n[3]
  puts "Yes"
else
  puts "No"
end