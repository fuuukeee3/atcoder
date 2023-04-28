x, y = gets.chomp.split(" ").map(&:to_i)
a = [1, 3, 5, 7, 8, 10, 12]
b = [4, 6, 9, 11]
c = [2]

if a.include?(x) && a.include?(y)
  puts "Yes"
  exit
end

if b.include?(x) && b.include?(y)
  puts "Yes"
  exit
end

if c.include?(x) && c.include?(y)
  puts "Yes"
  exit
end

puts "No"