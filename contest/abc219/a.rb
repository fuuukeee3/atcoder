n = gets.chomp.to_i
case n
when 0...40
  puts 40 - n
when 40...70
  puts 70 - n
when 70...90
  puts 90 -n
else
  puts "expert"
end