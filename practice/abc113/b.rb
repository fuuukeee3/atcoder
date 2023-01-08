n = gets.chomp.to_i
t, a = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

results = []
arr.each do |h|
  heikin = t - (h * 0.006)
  results << (a - heikin).abs
end

puts results.find_index(results.min) + 1
