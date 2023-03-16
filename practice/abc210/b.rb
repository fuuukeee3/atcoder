n = gets.chomp.to_i
s = gets.chomp.split("")

index = s.find_index('1')
if (index % 2).zero?
  puts "Takahashi"
else
  puts "Aoki"
end