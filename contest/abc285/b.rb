n = gets.chomp.to_i
s = gets.chomp.split("")

results = []
i = 1
loop do
  break if i > n - 1
  l = 0
  k = 0
  loop do
    break if k + i > n - 1

    # p [s[k], s[k + i]]
    break if s[k] == s[k + i]
    k += 1
    l += 1
  end
  results << l

  i += 1
end

puts results.join("\n")
