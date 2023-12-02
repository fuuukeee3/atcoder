mm, dd = gets.chomp.split(" ").map(&:to_i)
y, m, d = gets.chomp.split(" ").map(&:to_i)

if m == mm && d == dd
  puts "#{y + 1} 1 1"
elsif d == dd
  puts "#{y} #{m + 1} 1"
else
  puts "#{y} #{m} #{d + 1}"
end