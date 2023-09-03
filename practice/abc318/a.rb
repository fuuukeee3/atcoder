n, m, p = gets.chomp.split(" ").map(&:to_i)
arr = []

i = 0
loop do
  day = m + (p*i)
  break if day > n
  arr << day
  i += 1
end

puts arr.size
