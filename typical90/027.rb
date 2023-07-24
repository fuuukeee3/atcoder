n = gets.chomp.to_i
hash = {}
results = []

n.times do |i|
  s = gets.chomp
  if hash[s].nil?
    hash[s] = true
    results << i + 1
  end
end

puts results.join("\n")