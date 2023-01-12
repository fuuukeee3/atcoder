n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

count = 0
arr.combination(3).each do |a|
  next unless a.uniq.size == 3
  a.sort!
  next unless a[-1] < a[0] + a[1]
  count += 1
end

puts count
