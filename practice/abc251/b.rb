n, w = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

a = arr.combination(1)
b = arr.combination(2)
c = arr.combination(3)

results = a.map { |aa| aa.sum } +
  b.map { |aa| aa.sum } +
  c.map { |aa| aa.sum }

p results.uniq.count {|r| r <= w}
