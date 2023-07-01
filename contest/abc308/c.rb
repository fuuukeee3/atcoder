n = gets.chomp.to_i
hash = {}
n.times do |i|
  a, b = gets.chomp.split(" ").map(&:to_i)
  # hash[i + 1] = a.to_f / (a + b)
  hash[i + 1] = Rational(a, a + b)
end

sorted = hash.sort do |a, b|
  b[1] <=> a[1] || a[0] <=> b[0]
end

puts sorted.map { |s| s[0] }.join(" ")