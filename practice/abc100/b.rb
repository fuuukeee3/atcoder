d, n = gets.chomp.split(" ").map(&:to_i)
results = []
case d
when 0
  (1..1000).each do |i|
    results << i if i % 100 != 0
  end
when 1
  (1..1000).each do |i|
    ii = i * 100
    div, mod = ii.divmod(100)
    results << ii if div >= 1 && mod == 0
  end
when 2
  (1..1000).each do |i|
    ii = i * 100 * 100
    div, mod = ii.divmod(100 * 100)
    results << ii if div >= 1 && mod == 0
  end
end

puts results[n - 1]
