l1, l2, l3 = gets.chomp.split(" ").map(&:to_i)
if l1 == l2
  puts l3
elsif l1 == l3
  puts l2
elsif l2 == l3
  puts l1
end