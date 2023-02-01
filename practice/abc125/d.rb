n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

m_size = arr.count { |a| a < 0 }
arr = arr.map(&:abs)
total = 0
if m_size % 2 == 0
  total = arr.reduce(0) { |sum, a| sum += a }
else
  min = arr.min
  total = arr.reduce(0) { |sum, a| sum += a }
  total -= min * 2
end
puts total
