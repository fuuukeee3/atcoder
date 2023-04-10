n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
count = 0
(1...n-1).each do |i|
  count += 1 if [arr[i], arr[i-1], arr[i+1]].sort[1] == arr[i]
end

puts count