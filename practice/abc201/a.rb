arr = gets.chomp.split(" ").map(&:to_i)
arr.sort!
if arr[2] - arr[1] == arr[1] - arr[0]
  puts "Yes"
else
  puts "No"
end
