a, b, c, k = gets.chomp.split(" ").map(&:to_i)

sum = 0
if a <= k
  sum += a
  k -= a
else
  sum += k
  k -= k
end

if k == 0
  puts sum
  exit
end

if b <= k
  k -= b
else
  k -= k
end

if k == 0
  puts sum
  exit
end

if c <= k
  sum -= c
  k -= c
else
  sum -= k
  k -= k
end

puts sum
