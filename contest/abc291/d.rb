n = gets.chomp.to_i
hash = {}
arr = [0]
n.times do |i|
  a, b = gets.chomp.split(" ").map(&:to_i)
  hash[i] = [a, b]
  next if i == 0

  count = 0
  ba, bb = hash[i-1]
  count += 1 if ba == a
  count += 1 if bb == b
  arr << count * i
end

p hash
p arr
