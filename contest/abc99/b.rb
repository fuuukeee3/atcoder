a, b = gets.chomp.split(" ").map(&:to_i)
tree = [0, 1]
(2..999).each do |i|
  tree[i] = tree[i-1] + i
end

sa = b - a
index = 0
(1..999).each do |i|
  if tree[i] - tree[i-1] == sa
    index = i
  end
end

puts tree[index] - b