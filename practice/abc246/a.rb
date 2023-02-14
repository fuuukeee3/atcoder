x1, y1 = gets.chomp.split(" ").map(&:to_i)
x2, y2 = gets.chomp.split(" ").map(&:to_i)
x3, y3 = gets.chomp.split(" ").map(&:to_i)

hash_x = Hash.new { 0 }
hash_y = Hash.new { 0 }
[x1, x2, x3].each do |x|
  hash_x[x] += 1
end

[y1, y2, y3].each do |y|
  hash_y[y] += 1
end


result = []
hash_x.each do |k, v|
  result << k if v == 1
end
hash_y.each do |k, v|
  result << k if v == 1
end

puts result.join(" ")