n = gets.chomp.to_i
re = []

(1..13).each do |i|
  tmp = ("1" * i).to_i
  re.concat([tmp, tmp, tmp])
end

results = []
re.combination(3).each do |com|
  results << com.sum
end

puts results.uniq.sort[n - 1]