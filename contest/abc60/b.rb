a, b, c = gets.chomp.split(" ").map(&:to_i)
arr = []
(1..b).each do |i|
  arr << a * i % b
end

if arr.include?(c)
  puts "YES"
else
  puts "NO"
end