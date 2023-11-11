n, m = gets.chomp.split(" ").map(&:to_i)
a = []
b = []
n.times do
  a << gets.chomp.split("")
end

m.times do
  b << gets.chomp.split("")
end

template = b.map { |bb| bb.join("") }.join("")
flg = false

# 縦移動
(0..(n - m)).each do |h|
  (0..(n - m)).each do |w|
    # tmp = Array.new(m) { Array.new(m) }
    str = ""
    m.times do |i|
      m.times do |j|
        # tmp[i][j] = a[w + i][h + j]
        str += a[w + i][h + j]
      end
    end

    if template == str
      flg = true
    end
  end
end

# 横移動
(0..(n - m)).each do |h|
  (0..(n - m)).each do |w|
    # tmp = Array.new(m) { Array.new(m) }
    str = ""
    m.times do |i|
      m.times do |j|
        # tmp[i][j] = a[w + i][h + j]
        str += a[h + i][w + j]
      end
    end

    if template == str
      flg = true
    end
  end
end

puts flg ? "Yes" : "No"