n = gets.chomp.to_f
a = n / 1000
case
when a < 0.1
  puts "00"
when a <= 5
  puts (a * 10).ceil.to_s.rjust(2, "0")
when a <= 30
  puts (a + 50).ceil
when a <= 70
  puts ((a - 30) / 5 + 80).ceil
else
  puts 89
end