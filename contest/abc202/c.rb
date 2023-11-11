n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)
c = gets.chomp.split(" ").map(&:to_i)

aa = Hash.new { 0 }
bb = Hash.new { 0 }

a.each do |a2|
  aa[a2] += 1
end

c.each do |cc|
  bb[b[cc - 1]] += 1
end

count = 0
aa.each do |k, v|
  next if bb[k].nil?
  count += v * bb[k]
end

puts count
