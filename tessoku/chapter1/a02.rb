n, x = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

if arr.include?(x)
  puts "Yes"
else
  puts "No"
end