r = gets.chomp.to_i

if r >= 1 && r <= 99
  puts 100 - r
elsif r >= 100 && r <= 199
  puts 200 - r
elsif r >= 200 && r <= 299
  puts 300 - r
elsif r >= 300 && r <= 399
  puts 400 - r
end
