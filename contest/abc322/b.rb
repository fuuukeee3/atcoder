n, m = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp
t = gets.chomp

if t.start_with?(s) && t.end_with?(s)
  puts 0
elsif t.start_with?(s) && !t.end_with?(s)
  puts 1
elsif !t.start_with?(s) && t.end_with?(s)
  puts 2
else
  puts 3
end
