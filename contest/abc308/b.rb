n, m = gets.chomp.split(" ").map(&:to_i)
c = gets.chomp.split(" ")
d = gets.chomp.split(" ")
pp = gets.chomp.split(" ").map(&:to_i)

d.unshift("other")
prices = {}
(0..m).each do |i|
  prices[d[i]] = pp[i]
end


sum = 0
c.each do |cc|
  price = prices[cc]
  if price.nil?
    price = prices["other"]
  end

  sum += price
end

puts sum

