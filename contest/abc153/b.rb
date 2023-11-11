h, n = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

if arr.sum >= h
  puts "Yes"
else
  puts "No"
end