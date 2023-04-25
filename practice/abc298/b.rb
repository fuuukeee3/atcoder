n = gets.chomp.to_i
a = []
n.times do
  a << gets.chomp.split(" ").map(&:to_i)
end
b = []
n.times do
  b << gets.chomp.split(" ").map(&:to_i)
end

p a
new_a = []
(0...n).each do |i|
  arr = []
  (0...n).each do |j|
    arr << a[n- j][i]
  end
  new_a << arr
end

p new_a