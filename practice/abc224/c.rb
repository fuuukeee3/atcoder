n = gets.chomp.to_i
arr = []
n.times do
  arr << gets.chomp.split(" ").map(&:to_i)
end

count = 0
arr.combination(3).each do |combi|
  temp1 = (combi[1][0] - combi[0][0]) * (combi[2][1] - combi[0][1])
  temp2 = (combi[2][0] - combi[0][0]) * (combi[1][1] - combi[0][1])
  next if temp1 - temp2 == 0
  count += 1
end

puts count