h, w = gets.chomp.split(" ").map(&:to_i)
arr = []
min = 101
h.times do
  a = gets.chomp.split(" ").map(&:to_i)
  min = [min, a.min].min
  arr << a
end

count = 0
arr.each do |a|
  a.each do |aa|
    count += aa - min
  end
end

puts count