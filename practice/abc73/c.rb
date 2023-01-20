n = gets.chomp.to_i
hash = {}
n.times do
  a = gets.chomp.to_i
  if hash.has_key?(a)
    hash[a] = !hash[a]
  else
    hash[a] = true
  end
end

puts hash.select { |k, v| v }.size
