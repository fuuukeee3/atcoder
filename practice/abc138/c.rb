n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

arr.sort!
before = arr[0]
(1...n).each do |i|
  before = (before + arr[i]) / 2.0
end

p before