n, m = gets.chomp.split(" ").map(&:to_i)
a = []
b = []
n.times do
  a << gets.chomp.split("")
end

m.times do
  b << gets.chomp.split("")
end

# p a
# p b

# 縦移動
(0..(n-m)).each do |h|
  (0..(n-m)).each do |w|
  p [h,w]
  # p a[h][h...h+m]
  end
end
