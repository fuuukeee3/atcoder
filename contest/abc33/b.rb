n = gets.chomp.to_i
hash = {}
n.times do
  s, pp = gets.chomp.split(" ")
  hash[s] = pp.to_i
end

sum = hash.values.sum
name = "atcoder"
hash.each do |k, v|
  if v > sum / 2
    name = k
  end
end

puts name