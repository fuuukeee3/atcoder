# n = gets.chomp.to_i
# arr = gets.chomp.split(" ").map(&:to_i)

n = gets.chomp.to_i

loop do
  puts n
  n -= 1
  break if n < 0
end
