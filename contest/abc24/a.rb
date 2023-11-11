a, b, c, k = gets.chomp.split(" ").map(&:to_i)
s, t = gets.chomp.split(" ").map(&:to_i)

sum = s * a + b * t
if s + t >= k
  sum -= (s + t) * c
end

puts sum