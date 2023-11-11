n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)

count1 = 0
count2 = 0

(0...n).each do |i|
  if a[i] == b[i]
    count1 += 1
    next
  end

  index = b.find_index(a[i])
  next if index.nil?
  count2 += 1
end

puts count1
puts count2