n = gets.chomp.to_i
blue = Hash.new { 0 }
n.times do
  s = gets.chomp
  blue[s] += 1
end

m = gets.chomp.to_i
red = Hash.new { 0 }
m.times do
  t = gets.chomp
  red[t] += 1
end

max = 0
blue.each do |k, v|
  count = v
  count -= red[k]
  max = [max, count].max
end

puts max