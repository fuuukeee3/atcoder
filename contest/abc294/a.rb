n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

results = arr.map do |a|
  a if a % 2 == 0
end

puts results.compact.join(" ")