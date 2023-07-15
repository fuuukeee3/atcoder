n, pp, q = gets.chomp.split(" ").map(&:to_i)
d = gets.chomp.split(" ").map(&:to_i)

min = pp
d.each do |dd|
  min = [dd + q, min].min
end

puts min