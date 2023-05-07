n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

hash = {}
sorted_arr = arr.uniq.sort
sorted_arr.each_with_index do |a, index|
  hash[a] = index + 1
end

results = []
arr.each do |a|
  results << hash[a]
end

puts results.join(" ")