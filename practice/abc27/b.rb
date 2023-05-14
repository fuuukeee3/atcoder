n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

asum = a.sum
people, mod = asum.divmod(n)

unless mod.zero?
  puts -1
  exit
end

count = 0
(0...(n - 1)).each do |i|
  left = a[0..i].sum
  right = a[i + 1..-1].sum

  left2 = people * (i + 1)
  right2 = asum - left2

  next if left == left2 && right == right2
  count += 1
end

puts count
