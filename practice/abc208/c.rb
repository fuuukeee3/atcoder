n, k = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)
hash = {}
div, mod = k.divmod(n)

arr.each do |a|
  hash[a] = div
end

hash.sort.to_h.each do |k, v|
  break if mod.zero?

  hash[k] += 1
  mod -= 1
end

arr.each do |a|
  puts hash[a]
end

