# n = gets.chomp.to_i
# arr = gets.chomp.split(" ").map(&:to_i)

n, m = gets.chomp.split(" ").map(&:to_i)
arr = []
n.times do
  arr << gets.chomp.split("").map { |aa| aa == "o" ? 1 : 0 }
end
count = 0
(0...n).each do |i|
  ((i + 1...n)).each do |j|
    tmp = []
    (0...m).each do |k|
      tmp << arr[i][k] + arr[j][k]
    end
    count += 1 if tmp.all? { |a| a >= 1 }
  end
end
puts count
