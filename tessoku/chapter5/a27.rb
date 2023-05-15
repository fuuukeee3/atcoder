a, b = gets.chomp.split(" ").map(&:to_i)

loop do
  break if a.zero? || b.zero?
  break if a == b

  if a > b
    a = a % b
  else
    b = b % a
  end
end

puts [a, b].max