x1, y1, x2, y2 = gets.chomp.split(" ").map(&:to_i)
p1 = []
p2 = []

p1 << [x1 + 1, y1 + 2]
p1 << [x1 + 2, y1 + 1]
p1 << [x1 + 2, y1 - 1]
p1 << [x1 + 1, y1 - 2]
p1 << [x1 - 1, y1 - 2]
p1 << [x1 - 2, y1 - 1]
p1 << [x1 - 2, y1 + 1]
p1 << [x1 - 1, y1 + 2]

p2 << [x2 + 1, y2 + 2]
p2 << [x2 + 2, y2 + 1]
p2 << [x2 + 2, y2 - 1]
p2 << [x2 + 1, y2 - 2]
p2 << [x2 - 1, y2 - 2]
p2 << [x2 - 2, y2 - 1]
p2 << [x2 - 2, y2 + 1]
p2 << [x2 - 1, y2 + 2]


flg = false
p1.each do |pp|
  flg = true if p2.include?(pp)
end

puts flg ? "Yes" : "No"