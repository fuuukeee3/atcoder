n, x, y, z = gets.chomp.split(" ").map(&:to_i)
math_array = gets.chomp.split(" ").map(&:to_i)
english_array = gets.chomp.split(" ").map(&:to_i)
result = []
hash = {}
n.times do |i|
  hash[i + 1] = [math_array[i], english_array[i]]
end

sorted = hash.sort { |a, b| [b[1][0], a[0]] <=> [a[1][0], b[0]] }
x.times do |i|
  xx = sorted.shift
  result << xx[0]
end

sorted = sorted.sort { |a, b| [b[1][1], a[0]] <=> [a[1][1], b[0]] }
y.times do |i|
  yy = sorted.shift
  result << yy[0]
end

z_arr = sorted.map { |s| [s[0], s[1][0] + s[1][1]] }.sort { |a, b| [b[1], a[0]] <=> [a[1], b[0]] }
z.times do |i|
  result << z_arr[i][0]
end
puts result.sort.join("\n")
