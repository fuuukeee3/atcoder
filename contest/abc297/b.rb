s = gets.chomp
b1_index = s.index("B") + 1
b2_index = s.index("B", b1_index) + 1

r1_index = s.index("R") + 1
r2_index = s.index("R", r1_index) + 1

k_index = s.index("K") + 1

if b1_index.odd? && b2_index.odd?
  puts "No"
  exit
end

if b1_index.even? && b2_index.even?
  puts "No"
  exit
end

if k_index < r1_index || k_index > r2_index
  puts "No"
  exit
end

puts "Yes"