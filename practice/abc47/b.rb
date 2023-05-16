w, h, n = gets.chomp.split(" ").map(&:to_i)

ws = 0
we = w
hs = 0
he = h

n.times do
  x, y, a = gets.chomp.split(" ").map(&:to_i)
  case a
  when 1
    ws = x if ws < x
  when 2
    we = x if we > x
  when 3
    hs = y if hs < y
  when 4
    he = y if he > y
  end
end

puts [(we - ws), 0].max * [(he - hs), 0].max