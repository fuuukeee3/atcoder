n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

ans = a.max - a[0]
if a.max == a[0]
  if a.count { |aa| aa == a[0] } >= 2
    puts 1
  else
    puts 0
  end
else
  puts ans + 1
end