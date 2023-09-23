n, x = gets.chomp.split(" ").map(&:to_i)
scores = gets.chomp.split(" ").map(&:to_i)

# scores.sort!
# scores.shift
# scores.pop
# target = x - scores.sum
#
# puts target > 100 ? -1 : target
#
min = 101
(0..100).each do |i|
  s = scores.dup
  s.push(i)
  s.sort!
  s.shift
  s.pop

  if x <= s.sum
    min = i
    break
  end
end

puts min == 101 ? -1 : min