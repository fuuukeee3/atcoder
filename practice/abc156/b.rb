n, k = gets.chomp.split(" ").map(&:to_i)
results = []
loop do
  break if n.zero?

  div, mod = n.divmod(k)
  results << mod
  n = div
end

puts results.size