n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)

arr = Array.new(n) { 0 }
a.each do |aa|
  arr[aa - 1] += 1
end

arr.delete(0)
sa = arr.size - k

if sa <= 0
  puts 0
else
  puts arr.sort[0...sa].sum
end
