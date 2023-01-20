n = gets.chomp.to_i
hash = Hash.new { 0 }
n.times do
  s = gets.chomp
  hash[s] += 1
end

max = hash.values.max
puts hash.select { |k, v| v == max }.keys.sort.join("\n")
