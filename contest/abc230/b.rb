s = gets.chomp
t = 'oxx' * 10 ** 5
if t.include?(s)
  puts "Yes"
else
  puts "No"
end