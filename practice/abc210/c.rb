n, k = gets.chomp.split(" ").map(&:to_i)
candies = gets.chomp.split(" ").map(&:to_i)

hash = Hash.new { 0 }
max = 0
(0...n).each do |i|
  hash[candies[i]] += 1
  next if i < k - 1

  max = [max, hash.size].max

  hash[candies[i - k + 1]] -= 1
  if hash[candies[i - k + 1]].zero?
    hash.delete(candies[i - k + 1])
  end
end

puts max
