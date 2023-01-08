n, k = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

new_arr = arr.sort.reverse
total = 0
(0...k).each do |i|
  total += new_arr[i]
end

puts total
