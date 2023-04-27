a, b, k = gets.chomp.split(" ").map(&:to_i)

if a >= k
  ad = a - k
  k = 0
else
  ad = 0
  k -= a
end

bd = [b - k, 0].max
puts [ad, bd].join(" ")