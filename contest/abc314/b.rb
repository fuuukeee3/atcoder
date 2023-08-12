n = gets.chomp.to_i

bed = {}
n.times do |i|
  c = gets.chomp.to_i
  a = gets.chomp.split(" ").map(&:to_i)
  bed[i + 1] = a
end

x = gets.chomp.to_i

results = []
bed.each do |k, v|
  results << k if v.include?(x)
end

ans = {}
results.each do |r|
  ans[r] = bed[r].size
end

min = ans.values.min

ans2 = []
ans.each do |k, v|
  ans2 << k if v == min
end

puts ans2.size
puts ans2.sort.join(" ")
