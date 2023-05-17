n, k = gets.chomp.split(" ").map(&:to_i)
min = n * 2 - 2

if k >= min && k.even?
  puts "Yes"
else
  puts "No"
end