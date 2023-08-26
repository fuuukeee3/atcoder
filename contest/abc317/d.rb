n = gets.chomp.to_i
total_giseki = 0
kakutoku_giseki = 0

people = []
n.times do |i|
  x, y, z = gets.chomp.split(" ").map(&:to_i)
  total_giseki += z

  kahansu = ((x + y) / 2.0).ceil
  if x >= kahansu
    kakutoku_giseki += z
    next
  end

  arr << kahansu - x
end

p total_giseki
p kakutoku_giseki
p arr