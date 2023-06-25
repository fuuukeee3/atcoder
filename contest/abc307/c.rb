h1, w1 = gets.chomp.split(" ").map(&:to_i)
a = []
h1.times do
  a << gets.chomp.split("")
end

h2, w2 = gets.chomp.split(" ").map(&:to_i)
b = []
h2.times do
  b << gets.chomp.split("")
end

h3, w3 = gets.chomp.split(" ").map(&:to_i)
x = []
h3.times do
  x << gets.chomp.split("")
end

first_a = nil
first_b = nil
first_x = nil
aa = []
bb = []
xx = []
flg = true
(0...h1).each do |h|
  (0...w1).each do |w|
    if a[h][w] == "#"
      aa << [h, w]
      if flg
        first_a = [h, w]
        flg = false
      end
    end
  end
end

flg = true
(0...h2).each do |h|
  (0...w2).each do |w|
    if b[h][w] == "#"
      bb << [h, w]
      if flg
        first_b = [h, w]
        flg = false
      end
    end
  end
end

flg = true
(0...h3).each do |h|
  (0...w3).each do |w|
    if x[h][w] == "#"
      xx << [h, w]
      if flg
        first_x = [h, w]
        flg = false
      end
    end
  end
end

p first_a
p aa
p first_b
p bb
p first_x
p xx

new_a = []
aa.each do |aaa|
  new_a << [aaa[0] + (first_x[0] - first_a[0]), aaa[1] + (first_x[1] - first_a[1])]
end
