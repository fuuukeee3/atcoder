n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

if arr.all? {|a| arr[0] == a}
  puts "Yes"
else
  puts "No"
end