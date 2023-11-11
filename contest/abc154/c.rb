n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

if arr.size == arr.uniq.size
  puts "YES"
else
  puts "NO"
end
