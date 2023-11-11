n, x = gets.chomp.split(" ").map(&:to_i)
arr = []
n.times do
  arr << gets.chomp.to_i
end

x -= arr.sum
count = n

arr.sort!
arr.each do |a|
  div, mod = x.divmod(a)
  count += div
  x = mod
end

puts count
