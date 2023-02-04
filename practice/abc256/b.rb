n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

(0...n).each do |i|
  ((i + 1)...n).each do |j|
    arr[i] += arr[j]
  end
end

puts arr.count { |a| a >= 4 }