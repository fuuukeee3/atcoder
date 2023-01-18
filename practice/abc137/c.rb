n = gets.chomp.to_i
hash = Hash.new(0)
n.times do
  s = gets.chomp.split("").sort.join("")
  hash[s] += 1
end

result = 0
hash.each do |k, v|
  result += v * (v - 1) / 2
end
puts result
