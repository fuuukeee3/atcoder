a, b = gets.chomp.split(" ").map(&:to_i)
count = 0
loop do
  break if a == b || a == 0 || b == 0

  if a > b
    div, mod = a.divmod(b)
    a = a - b * div
    count += div
  else
    div, mod = b.divmod(a)
    b = b - a * div
    count += div
  end
end

puts [count - 1, 0].max