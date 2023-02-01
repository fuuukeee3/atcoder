a, b, c = gets.chomp.split(" ").map(&:to_i)

odd, even = [a, b, c].partition { |i| i % 2 == 1 }
count = 0

if odd.size == 3 || even.size == 3
  # 何もしない
elsif odd.size > even.size
  odd = odd.map { |o| o += 1 }
  count += 1
else
  even = even.map { |e| e += 1 }
  count += 1
end

arr = odd + even
max = arr.max
arr.each do |a|
  sa = max - a
  count += sa / 2
end

puts count
