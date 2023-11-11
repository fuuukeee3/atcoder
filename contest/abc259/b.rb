a, b, d = gets.chomp.split(" ").map(&:to_i)

r = d * Math::PI / 180
aa = Math.cos(r) * a - Math.sin(r) * b
bb = Math.sin(r) * a + Math.cos(r) * b
puts aa, bb
