h, w = gets.chomp.split(" ").map(&:to_i)
grids = []
h.times do
  grids << gets.chomp.split("")
end

q = gets.chomp.to_i
q.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  r1 = []
  (0...a).each do |i|
    r1 << grids[i][0...b]
  end

  r2 = []
  (0...a).each do |i|
    r2 << grids[i][b..-1]
  end

  r3 = []
  (a...h).each do |i|
    r3 << grids[i][0...b]
  end

  r4 = []
  (a...h).each do |i|
    r4 << grids[i][b..-1]
  end

  # p r1
  # p r2
  # p r3
  # p r4

  nr1 = r1.reverse.map(&:reverse)
  nr2 = r2.reverse.map(&:reverse)
  nr3 = r3.reverse.map(&:reverse)
  nr4 = r4.reverse.map(&:reverse)

  # p nr1
  # p nr2
  # p nr3
  # p nr4

  new_grids = []
  nr1.size.times do |i|
    new_grids << nr1[i] + nr2[i]
  end

  nr3.size.times do |i|
    new_grids << nr3[i] + nr4[i]
  end
  grids = new_grids
end

grids.each do |g|
  puts g.join("")
end
