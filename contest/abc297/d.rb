a, b = gets.chomp.split(" ").map(&:to_i)

if a < b
  a, b = b ,a
end

count = 0
loop do
  break if b == 0

  count += a / b
  div, mod = a.divmod(b)
  a = mod
  a, b = b, a
end

puts count - 1