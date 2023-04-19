require 'set'
n = gets.chomp.to_i
arr = [n]
1000000.times do
  if n.even?
    n = n / 2
  else
    n = 3 * n + 1
  end
  arr << n
end

set = Set.new
arr.each_with_index do |a, index|
  if set.include?(a)
    puts index + 1
    break
  end
  set << a
end