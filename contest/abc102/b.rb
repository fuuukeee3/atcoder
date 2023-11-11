n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

max = 0
(0...n-1).each do |i|
  (i...n).each do |j|
    max = [max, (arr[i] - arr[j]).abs].max
  end
end

puts max