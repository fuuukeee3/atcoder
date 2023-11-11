n = gets.chomp.to_i
case n
when 0..59
  puts "Bad"
when 60..89
  puts "Good"
when 90..99
  puts "Great"
when 100
  puts "Perfect"
end