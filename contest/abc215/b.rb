n = gets.chomp.to_i

if n == 1
  puts 0
  exit
end
i = 0
loop do
  break if 2 ** i > n
  i += 1
end

puts i - 1