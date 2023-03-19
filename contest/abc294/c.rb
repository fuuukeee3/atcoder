n, m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)

c = (a + b).sort
hash = {}
c.each_with_index do |cc, index|
  hash[cc] = index + 1
end

ar = []
a.each do |aa|
  ar << hash[aa]
end

br = []
b.each do |bb|
  br << hash[bb]
end

puts ar.join(" ")
puts br.join(" ")
