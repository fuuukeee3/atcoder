n = gets.chomp.to_i
arr = []
n.times do
  arr << gets.chomp.split(" ").map(&:to_i)
end

count = 0
(0...n).each do |i|
  (i+1...n).each do |j|
    xx = arr[j][0] - arr[i][0]
    yy = arr[j][1] - arr[i][1]
    katamuki = yy / xx.to_f
    count += 1 if katamuki >= -1 && katamuki <= 1
    # p [xx, yy, yy / xx.to_f]
  end
end

puts count