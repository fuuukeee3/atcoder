n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)

if a.zip(b).map { |ab| ab[0] * ab[1] }.sum == 0
  puts "Yes"
else
  puts "No"
end