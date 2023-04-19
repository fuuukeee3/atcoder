n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
arr.sort!
max = arr.pop

if max < arr.sum
  puts "Yes"
else
  puts "No"
end