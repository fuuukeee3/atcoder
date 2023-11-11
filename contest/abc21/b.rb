n = gets.chomp.to_i
a, b = gets.chomp.split(" ").map(&:to_i)
k = gets.chomp.to_i
pp = gets.chomp.split(" ").map(&:to_i)

arr = [a, b, pp].flatten
if arr.size == arr.uniq.size
  puts "YES"
else
  puts "NO"
end