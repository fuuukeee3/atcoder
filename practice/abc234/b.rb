def sb(a, b)
  x = (a[0]-b[0]).abs
  y = (a[1]-b[1]).abs
  Math.sqrt(x ** 2 + y ** 2)
end

n = gets.chomp.to_i
arr = []
n.times do
  x, y = gets.chomp.split(" ").map(&:to_i)
  arr << [x, y]
end

max = 0
(0...(n-1)).each do |i|
  (i...n).each do |j|
    max = [sb(arr[i], arr[j]), max].max
  end
end

puts max