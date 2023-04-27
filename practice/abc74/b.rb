n = gets.chomp.to_i
k = gets.chomp.to_i
x = gets.chomp.split(" ").map(&:to_i)

sum = 0
x.each do |xx|
  a = (xx - 0).abs * 2
  b = (xx - k).abs * 2
  sum += [a, b].min
end

puts sum