n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

min = 100000000
(1...n).each do |i|
  a = arr[0...i]
  b = arr[i..-1]
  min = [(a.sum - b.sum).abs, min].min
end

puts min