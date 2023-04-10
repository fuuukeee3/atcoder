n, d = gets.chomp.split(" ").map(&:to_i)
arr = []
n.times do
  arr << gets.chomp.split(" ").map(&:to_i)
end

count = 0
(0...n - 1).each do |i|
  (i + 1...n).each do |j|
    tmp = arr[i].zip(arr[j]).map { |a| (a[0] - a[1]).abs ** 2 }.sum
    result = Math.sqrt(tmp)
    if result.to_s.split(".")[1] == "0"
      count += 1
    end
  end
end

puts count