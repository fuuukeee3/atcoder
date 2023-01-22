n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

hash = Hash.new { 0 }
arr.each do |a|
  mod = a % 200
  hash[mod] += 1
end

count = 0
(0..200).each do |k|
  count += (hash[k] * (hash[k] - 1)) / 2
end

puts count
