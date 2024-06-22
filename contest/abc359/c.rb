sx, sy = gets.chomp.split(" ").map(&:to_i)
tx, ty = gets.chomp.split(" ").map(&:to_i)


x_sa = (tx - sx).abs
y_sa = (ty - sy).abs

p x_sa
p y_sa

