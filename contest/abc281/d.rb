# n = gets.chomp.to_i
# arr = gets.chomp.split(" ").map(&:to_i)
result = -1
n, k, d = gets.chomp.split(" ").map(&:to_i)
gets.chomp.split(" ").map(&:to_i).combination(k) do |a|
  s = a.sum
  if s % d == 0 && result < s
    result = s
  end
end
puts result
