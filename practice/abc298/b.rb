n = gets.chomp.to_i
a = []
n.times do
  a << gets.chomp.split(" ").map(&:to_i)
end
b = []
n.times do
  b << gets.chomp.split(" ").map(&:to_i)
end

flgs = []

4.times do
  new_a = []
  (0...n).each do |i|
    arr = []
    (0...n).each do |j|
      arr << a[n - j - 1][i]
    end
    new_a << arr
  end
  a = new_a

  flg = true
  n.times do |i|
    n.times do |j|
      flg = false if a[i][j] == 1 && b[i][j] == 0
    end
  end
  flgs << flg
end

puts flgs.any? ? "Yes" : "No"