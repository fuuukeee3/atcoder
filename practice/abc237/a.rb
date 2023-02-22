n = gets.chomp.to_i
nn = 2**31
if n >= -nn && n <nn
  puts "Yes"
else
  puts "No"
end