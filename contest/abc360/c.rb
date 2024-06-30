n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
w = gets.chomp.split(" ").map(&:to_i)

boxes = Array.new(n + 1) { [] }
n.times do |i|
  boxes[a[i]] << w[i]
end

# p boxes
total = 0
boxes.each do |box|
  if box.size > 1
    total += box.sum - box.max
  end
end

puts total
