n, k, q = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
l = gets.chomp.split(" ").map(&:to_i)

result = {}
a.each_with_index do |aa, index|
  result[index + 1] = aa
end

l.each do |ll|
  cur = result[ll]
  next if cur == n
  next if result.values.include?(cur + 1)

  result[ll] = cur + 1
end
puts result.values.join(" ")
