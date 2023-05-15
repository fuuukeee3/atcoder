a, b = gets.chomp.split(" ").map(&:to_i)
ab = a * b

loop do
  break if a == b
  break if a.zero? || b.zero?

  a > b ? a = a % b : b = b % a
end

gcd = [a, b].max

puts ab / gcd