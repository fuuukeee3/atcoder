n, d = gets.chomp.split(" ").map(&:to_i)
arr = []
n.times do
  arr << gets.chomp.split(" ").map(&:to_i)
end

count = 0
(0...n).each do |i|
  tmp = []
  (0...d).each do |j|
    if i != n - 1
      tmp << (arr[i][j] - arr[i + 1][j]) ** 2
    else
      tmp << (arr[i][j] - arr[0][j]) ** 2
    end
  end

  count += 1 if Math.sqrt(tmp.sum).to_s.match?(/\.0$/)
end

if d == 1
  count *= 2
end
puts count
