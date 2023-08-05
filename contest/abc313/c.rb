n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

sum = a.sum
target, mod = sum.divmod(n)
p mod
if mod <= 1
  arr = a.select { |aa| aa < target }
  count = 0
  arr.each do |aa|
    count += target - aa
  end

  puts count
else
  target += 1
  arr = a.select { |aa| aa > target }
  count = 0
  arr.each do |aa|
    count += aa - target
  end

  puts count
end
