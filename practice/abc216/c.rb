n = gets.chomp.to_i
arr = []
loop do
  n, mod = n.divmod(2)
  arr << "A" if mod == 1
  break if n.zero?
  arr << "B"
end

puts arr.reverse.join("")