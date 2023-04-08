a, b = gets.chomp.split(" ").map(&:to_i)
con = 1
tap = 0
loop do
  break if con >= b

  tap += 1
  con += a - 1
end

puts tap