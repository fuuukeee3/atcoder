require "set"
n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

hash = Hash.new { 0 }
count = 0
(0...n).each do |i|
  count += i - hash[arr[i]]
  # p [i, hash[arr[i]], count]
  hash[arr[i]] += 1
end

puts count
