x1, y1, x2, y2 = gets.chomp.split(" ").map(&:to_i)
mx = y2 - y1
my = x2 - x1

x3 = x2 - mx
y3 = y2 + my
x4 = x1 - mx
y4 = y1 + my

puts [x3, y3, x4, y4].join(" ")
